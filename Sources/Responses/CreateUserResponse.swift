public struct CreateUserResponse: Codable {
    public let userId: String

    public init(userId: String) {
        self.userId = userId
    }
}
