public struct APIError: Error, Equatable {

    public let type: ErrorType
    public let description: String
    public let errorPayload: ErrorPayload?

    public enum ErrorType: String, Codable {
        case unknown
        case invalidJson
        case missingKey
        case invalidValue
        case internalServerError
        case invalidVerificationCode
        case notFound
        case duplicateGroupId
        case invalidGroupTag
        case authenticationFailed
        case pushFailed
        case notModified
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
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)

        let errorTypeString = try values.decode(String.self, forKey: .type)
        let description = try values.decode(String.self, forKey: .description)

        self.init(type: ErrorType(rawValue: errorTypeString) ?? .unknown, description: description)
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
