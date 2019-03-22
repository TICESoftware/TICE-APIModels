public struct GroupInformationResponse: Codable {
    
    public let groupId: String
    public let type: GroupType
    public let joinMode: JoinMode
    public let permissionMode: PermissionMode
    public let encryptedSettings: String

    // MARK: Information only for members of this or parent groups

    public let parentGroupId: String?
    public let encryptedMemberships: [Membership]?
    public let encryptedInternalSettings: String?
    public let children: [Child]?

    public init(groupId: String, parentGroupId: String?, type: GroupType, joinMode: JoinMode, permissionMode: PermissionMode, encryptedMemberships: [Membership]?, encryptedSettings: String, encryptedInternalSettings: String?, children: [Child]?) {
        self.groupId = groupId
        self.parentGroupId = parentGroupId
        self.type = type
        self.joinMode = joinMode
        self.permissionMode = permissionMode
        self.encryptedMemberships = encryptedMemberships
        self.encryptedSettings = encryptedSettings
        self.encryptedInternalSettings = encryptedInternalSettings
        self.children = children
    }
}
