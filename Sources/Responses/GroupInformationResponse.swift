public struct GroupInformationResponse: Codable {
    public let groupId: String
    public let type: GroupType
    public let joinMode: JoinMode
    public let permissionMode: PermissionMode
    public let encryptedMemberships: [Membership]?
    public let encryptedSettings: String
    public let encryptedInternalSettings: String?

    public init(groupId: String, type: GroupType, joinMode: JoinMode, permissionMode: PermissionMode, encryptedMemberships: [Membership]?, encryptedSettings: String, encryptedInternalSettings: String?) {
        self.groupId = groupId
        self.type = type
        self.joinMode = joinMode
        self.permissionMode = permissionMode
        self.encryptedMemberships = encryptedMemberships
        self.encryptedSettings = encryptedSettings
        self.encryptedInternalSettings = encryptedInternalSettings
    }
}
