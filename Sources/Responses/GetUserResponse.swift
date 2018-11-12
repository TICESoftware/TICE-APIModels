public struct GetUserResponse: Codable {
    public let userId: String
    public let publicKeys: UserPublicKeys

    public init(userId: String, publicKeys: UserPublicKeys) {
        self.userId = userId
        self.publicKeys = publicKeys
    }
}
