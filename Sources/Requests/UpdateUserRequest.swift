public struct UpdateUserRequest: Codable {
    public let publicKeys: UserPublicKeys?
    public let deviceId: String?
    public let verificationCode: String?
    public let publicName: String?

    public init(publicKeys: UserPublicKeys? = nil, deviceId: String? = nil, verificationCode: String? = nil, publicName: String?) {
        self.publicKeys = publicKeys
        self.deviceId = deviceId
        self.verificationCode = verificationCode
        self.publicName = publicName
    }
}
