public struct GroupInternalsResponse: Codable {

    public let encryptedInternalSettings: String
    public let encryptedMemberships: [Membership]
    public let parentEncryptedGroupKey: String?
    public let children: [GroupId]

    public init(encryptedInternalSettings: String, encryptedMemberships: [Membership], parentEncryptedGroupKey: String?, children: [GroupId]) {
        self.encryptedInternalSettings = encryptedInternalSettings
        self.encryptedMemberships = encryptedMemberships
        self.parentEncryptedGroupKey = parentEncryptedGroupKey
        self.children = children
    }
}
