public struct CreateGroupRequest: Codable {
    public let type: GroupType
    public let joinMode: JoinMode
    public let permissionMode: PermissionMode
    public let groupId: String
    public let parentGroupId: String?
    public let selfSignedAdminCertificate: Membership
    public let encryptedSettings: String
    public let encryptedInternalSettings: String
    public let encryptedGroupKey: String

    public init(type: GroupType, joinMode: JoinMode, permissionMode: PermissionMode, groupId: String, parentGroupId: String?, selfSignedAdminCertificate: Membership, encryptedSettings: String, encryptedInternalSettings: String, encryptedGroupKey: String) {
        self.type = type
        self.joinMode = joinMode
        self.permissionMode = permissionMode
        self.groupId = groupId
        self.parentGroupId = parentGroupId
        self.selfSignedAdminCertificate = selfSignedAdminCertificate
        self.encryptedSettings = encryptedSettings
        self.encryptedInternalSettings = encryptedInternalSettings
        self.encryptedGroupKey = encryptedGroupKey
    }
}
