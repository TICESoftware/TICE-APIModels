public struct UpdateUserRequest: Codable {
    public let verificationCode: String
    public let publicKeys: UserPublicKeys

    public init(verificationCode: String, publicKeys: UserPublicKeys) {
        self.verificationCode = verificationCode
        self.publicKeys = publicKeys
    }
}
