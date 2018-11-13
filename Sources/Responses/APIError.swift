public struct APIError: Error, Equatable {

    public let type: ErrorType
    public let description: String

    public enum ErrorType: String, Codable {
        case unknown
        case invalidJson
        case missingKey
        case invalidValue
        case internalServerError
        case invalidVerificationCode
        case notFound
    }

    public init(type: ErrorType, description: String = "") {
        self.type = type
        self.description = description
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
