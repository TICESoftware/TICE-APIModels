import Foundation

public struct CreateGroupRequest: Codable {
    public let groupId: GroupId
    public let type: GroupType
    public let joinMode: JoinMode
    public let permissionMode: PermissionMode
    public let selfSignedAdminCertificate: Certificate
    public let encryptedSettings: Data
    public let encryptedInternalSettings: Data
    public let parent: ParentGroup?

    public init(groupId: GroupId, type: GroupType, joinMode: JoinMode, permissionMode: PermissionMode, selfSignedAdminCertificate: Certificate, encryptedSettings: Data, encryptedInternalSettings: Data, parent: ParentGroup?) {
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
