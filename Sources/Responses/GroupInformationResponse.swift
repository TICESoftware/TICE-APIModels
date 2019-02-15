public struct GroupInformationResponse: Codable {
    public let groupId: String
    public let mode: GroupMode
    public let encryptedMemberships: [Membership]
    public let encryptedSettings: String

    public init(groupId: String, mode: GroupMode, encryptedMemberships: [Membership], encryptedSettings: String) {
        self.groupId = groupId
        self.mode = mode
        self.encryptedMemberships = encryptedMemberships
        self.encryptedSettings = encryptedSettings
    }
}
