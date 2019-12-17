public struct APIError: Error, Equatable {

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
        let errorPayload = try values.decodeIfPresent(ErrorPayload.self, forKey: .errorPayload)

        self.init(type: errorType, description: description, payload: errorPayload)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(description, forKey: .description)
        try container.encodeIfPresent(errorPayload, forKey: .errorPayload)
    }
}

public extension APIError.ErrorType {
    static var unknown: Self = APIError.ErrorType(raw: "unknown")
    static var invalidJson: Self = APIError.ErrorType(raw: "invalidJson")
    static var missingKey: Self = APIError.ErrorType(raw: "missingKey")
    static var invalidValue: Self = APIError.ErrorType(raw: "invalidValue")
    static var internalServerError: Self = APIError.ErrorType(raw: "internalServerError")
    static var invalidVerificationCode: Self = APIError.ErrorType(raw: "invalidVerificationCode")
    static var notFound: Self = APIError.ErrorType(raw: "notFound")
    static var duplicateGroupId: Self = APIError.ErrorType(raw: "duplicateGroupId")
    static var invalidGroupTag: Self = APIError.ErrorType(raw: "invalidGroupTag")
    static var authenticationFailed: Self = APIError.ErrorType(raw: "authenticationFailed")
    static var pushFailed: Self = APIError.ErrorType(raw: "pushFailed")
    static var notModified: Self = APIError.ErrorType(raw: "notModified")
    static var conflicts: Self = APIError.ErrorType(raw: "conflicts")
    static var groupIsParent: Self = APIError.ErrorType(raw: "groupIsParent")
    static var clientBuildDeprecated: Self = APIError.ErrorType(raw: "clientBuildDeprecated")
    static var groupIsFull: Self = APIError.ErrorType(raw: "groupIsFull")
    static var groupIsOverfull: Self = APIError.ErrorType(raw: "groupIsOverfull")
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

public struct ErrorPayload: Codable, Equatable {
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
