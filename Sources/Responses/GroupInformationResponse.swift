public struct GroupInformationResponse: Codable {
    public let groupId: String
    public let mode: GroupMode
    public let encryptedMemberships: [String]
    public let encryptedSettings: String

    public init(groupId: String, mode: GroupMode, encryptedMemberships: [String], encryptedSettings: String) {
        self.groupId = groupId
        self.mode = mode
        self.encryptedMemberships = encryptedMemberships
        self.encryptedSettings = encryptedSettings
    }
}
