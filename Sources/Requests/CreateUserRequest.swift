public typealias PhoneNumber = String

public struct CreateUserRequest: Codable {
    public let publicKeys: UserPublicKeys
    public let platform: Platform
    public let deviceId: String
    public let verificationCode: String

    public init(publicKeys: UserPublicKeys, platform: Platform, deviceId: String, verificationCode: String) {
        self.publicKeys = publicKeys
        self.platform = platform
        self.deviceId = deviceId
        self.verificationCode = verificationCode
    }
}
