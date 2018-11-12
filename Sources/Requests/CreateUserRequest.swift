public struct CreateUserRequest: Codable {
    public let phoneNumber: String
    public let publicKeys: UserPublicKeys
    public let platform: String
    public let deviceId: String
    public let verificationCode: String

    public init(phoneNumber: String, publicKeys: UserPublicKeys, platform: String, deviceId: String, verificationCode: String) {
        self.phoneNumber = phoneNumber
        self.publicKeys = publicKeys
        self.platform = platform
        self.deviceId = deviceId
        self.verificationCode = verificationCode
    }
}
