public struct CreateGroupRequest: Codable {
    public let type: GroupType
    public let joinMode: JoinMode
    public let permissionMode: PermissionMode
    public let groupId: String
    public let selfSignedAdminCertificate: Membership
    public let encryptedSettings: String
    public let encryptedInternalSettings: String
    public let parent: ParentGroup?

    public init(groupId: String, type: GroupType, joinMode: JoinMode, permissionMode: PermissionMode, selfSignedAdminCertificate: Membership, encryptedSettings: String, encryptedInternalSettings: String, parent: ParentGroup?) {
        self.groupId = groupId
        self.type = type
        self.joinMode = joinMode
        self.permissionMode = permissionMode
        self.selfSignedAdminCertificate = selfSignedAdminCertificate
        self.encryptedSettings = encryptedSettings
        self.encryptedInternalSettings = encryptedInternalSettings
        self.parent = parent
    }
}
