public struct APIError: Error {

    public let type: ErrorType
    public let description: String
    public let errorPayload: ErrorPayload?

    public struct ErrorType: Equatable {
        var raw: String
    }

    public init(type: ErrorType, description: String = "", payload: ErrorPayload? = nil) {
        self.type = type
        self.description = description
        self.errorPayload = payload
    }
}

extension APIError: Codable {

    enum CodingKeys: String, CodingKey {
        case type
        case description
        case errorPayload
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)

        let errorType = try values.decode(ErrorType.self, forKey: .type)
        let description = try values.decode(String.self, forKey: .description)
        
        let errorPayload: ErrorPayload?
        switch errorType {
        case .conflicts:
            errorPayload = try values.decodeIfPresent(RecipientValidationConflicts.self, forKey: .errorPayload)
        default:
            errorPayload = nil
        }

        self.init(type: errorType, description: description, payload: errorPayload)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(description, forKey: .description)
        
        switch type {
        case .conflicts:
            try container.encodeIfPresent(errorPayload as! RecipientValidationConflicts?, forKey: .errorPayload)
        default:
            break
        }
        
    }
}

public extension APIError.ErrorType {
    static var unknown: Self = .init(raw: "unknown")
    static var invalidJson: Self = .init(raw: "invalidJson")
    static var missingKey: Self = .init(raw: "missingKey")
    static var invalidValue: Self = .init(raw: "invalidValue")
    static var internalServerError: Self = .init(raw: "internalServerError")
    static var invalidVerificationCode: Self = .init(raw: "invalidVerificationCode")
    static var notFound: Self = .init(raw: "notFound")
    static var duplicateGroupId: Self = .init(raw: "duplicateGroupId")
    static var invalidGroupTag: Self = .init(raw: "invalidGroupTag")
    static var authenticationFailed: Self = .init(raw: "authenticationFailed")
    static var pushFailed: Self = .init(raw: "pushFailed")
    static var notModified: Self = .init(raw: "notModified")
    static var conflicts: Self = .init(raw: "conflicts")
    static var groupIsParent: Self = .init(raw: "groupIsParent")
    static var clientBuildDeprecated: Self = .init(raw: "clientBuildDeprecated")
}

extension APIError.ErrorType: Codable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        raw = try container.decode(String.self)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(raw)
    }
}

public protocol ErrorPayload: Codable { }

public struct RecipientValidationConflicts: ErrorPayload {
    
    public let conflicts: [Conflict]

    public struct Conflict: Codable, Equatable {
        public let userId: UserId
        public let reason: Reason

        public enum Reason: String, Codable {
            case newIdentityKey
            case membershipMismatch
            case serverSignedCertificateInvalid
        }

        public init(userId: UserId, reason: Reason) {
            self.userId = userId
            self.reason = reason
        }
    }

    public init(conflicts: [Conflict]) {
        self.conflicts = conflicts
    }
}
