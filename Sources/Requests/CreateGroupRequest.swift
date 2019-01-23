public struct CreateGroupRequest: Codable {
    public let mode: GroupMode
    public let groupId: String
    public let ownerCertificate: String
    public let encryptedSettings: String

    public init(mode: GroupMode, groupId: String, ownerCertificate: String, encryptedSettings: String) {
        self.mode = mode
        self.groupId = groupId
        self.ownerCertificate = ownerCertificate
        self.encryptedSettings = encryptedSettings
    }
}
