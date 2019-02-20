public struct CreateGroupRequest: Codable {
    public let mode: GroupMode
    public let groupId: String
    public let selfSignedOwnerCertificate: Membership
    public let encryptedSettings: String

    public init(mode: GroupMode, groupId: String, selfSignedOwnerCertificate: Membership, encryptedSettings: String) {
        self.mode = mode
        self.groupId = groupId
        self.selfSignedOwnerCertificate = selfSignedOwnerCertificate
        self.encryptedSettings = encryptedSettings
    }
}
