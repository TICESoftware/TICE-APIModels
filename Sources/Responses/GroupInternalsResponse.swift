public struct GroupInternalsResponse: Codable {

    public let encryptedInternalSettings: String
    public let encryptedMemberships: [Membership]
    public let parentEncryptedGroupKey: String?
    public let children: [GroupId]
    public let etag: ETAG

    public init(encryptedInternalSettings: String, encryptedMemberships: [Membership], parentEncryptedGroupKey: String?, children: [GroupId], etag: ETAG) {
        self.encryptedInternalSettings = encryptedInternalSettings
        self.encryptedMemberships = encryptedMemberships
        self.parentEncryptedGroupKey = parentEncryptedGroupKey
        self.children = children
        self.etag = etag
    }
}
