public struct GetUserResponse: Codable {
    public let userId: UserId
    public let publicSigningKey: PublicKey
    public let publicName: String?

    public init(userId: UserId, publicSigningKey: PublicKey, publicName: String?) {
        self.userId = userId
        self.publicSigningKey = publicSigningKey
        self.publicName = publicName
    }
}
