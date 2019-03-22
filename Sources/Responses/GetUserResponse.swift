public struct GetUserResponse: Codable {
    public let userId: UserId
    public let publicKeys: UserPublicKeys

    public init(userId: UserId, publicKeys: UserPublicKeys) {
        self.userId = userId
        self.publicKeys = publicKeys
    }
}
