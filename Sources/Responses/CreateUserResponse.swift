public struct CreateUserResponse: Codable {
    public let userId: UserId

    public init(userId: UserId) {
        self.userId = userId
    }
}
