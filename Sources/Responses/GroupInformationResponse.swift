public struct GroupInformationResponse: Codable {
    
    public let groupId: String
    public let type: GroupType
    public let joinMode: JoinMode
    public let permissionMode: PermissionMode
    public let encryptedSettings: String

    // MARK: Information only for members of this or parent groups

    public let encryptedMemberships: [Membership]?
    public let encryptedInternalSettings: String?
    public let parentGroupId: String?
    public let children: [ChildGroup]?

    public init(groupId: String, type: GroupType, joinMode: JoinMode, permissionMode: PermissionMode, encryptedMemberships: [Membership]?, encryptedSettings: String, encryptedInternalSettings: String?, parentGroupId: String?, children: [ChildGroup]?) {
        self.groupId = groupId
        self.type = type
        self.joinMode = joinMode
        self.permissionMode = permissionMode
        self.encryptedMemberships = encryptedMemberships
        self.encryptedSettings = encryptedSettings
        self.encryptedInternalSettings = encryptedInternalSettings
        self.parentGroupId = parentGroupId
        self.children = children
    }
}
