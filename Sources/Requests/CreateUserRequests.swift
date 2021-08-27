public struct CreatePushUserRequest: Codable {
    public let publicKeys: UserPublicKeys
    public let platform: Platform
    public let deviceId: String
    public let verificationCode: String
    public let publicName: String?

    public init(publicKeys: UserPublicKeys, platform: Platform, deviceId: String, verificationCode: String, publicName: String?) {
        self.publicKeys = publicKeys
        self.platform = platform
        self.deviceId = deviceId
        self.verificationCode = verificationCode
        self.publicName = publicName
    }
}

public struct CreateCaptchaUserRequest: Codable {
    public let publicKeys: UserPublicKeys
    public let platform: Platform
    public let verificationCode: String
    public let publicName: String?

    public init(publicKeys: UserPublicKeys, platform: Platform, verificationCode: String, publicName: String?) {
        self.publicKeys = publicKeys
        self.platform = platform
        self.verificationCode = verificationCode
        self.publicName = publicName
    }
}

public struct CreateWebUserRequest: Codable {
    public let publicKeys: UserPublicKeys
    public let publicName: String?

    public init(publicKeys: UserPublicKeys, publicName: String?) {
        self.publicKeys = publicKeys
        self.publicName = publicName
    }
}
