public struct CreateUserRequest: Codable {
    public let phoneNumber: PhoneNumber
    public let publicKeys: UserPublicKeys
    public let platform: Platform
    public let deviceId: String
    public let verificationCode: String

    public init(phoneNumber: PhoneNumber, publicKeys: UserPublicKeys, platform: Platform, deviceId: String, verificationCode: String) {
        self.phoneNumber = phoneNumber
        self.publicKeys = publicKeys
        self.platform = platform
        self.deviceId = deviceId
        self.verificationCode = verificationCode
    }
}
