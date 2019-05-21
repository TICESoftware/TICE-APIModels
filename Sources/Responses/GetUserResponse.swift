public struct GetUserResponse: Codable {
    public let userId: UserId
    public let publicSigningKey: PublicKey

    public init(userId: UserId, publicSigningKey: PublicKey) {
        self.userId = userId
        self.publicSigningKey = publicSigningKey
    }
}
