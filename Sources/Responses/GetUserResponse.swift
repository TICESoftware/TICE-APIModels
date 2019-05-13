public struct GetUserResponse: Codable {
    public let userId: UserId
    public let publicVerificationKey: PublicKey

    public init(userId: UserId, publicVerificationKey: PublicKey) {
        self.userId = userId
        self.publicVerificationKey = publicVerificationKey
    }
}
