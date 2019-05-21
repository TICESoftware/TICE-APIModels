import Foundation

public struct CreateGroupRequest: Codable {
    public let groupId: GroupId
    public let type: GroupType
    public let joinMode: JoinMode
    public let permissionMode: PermissionMode
    public let selfSignedAdminCertificate: Certificate
    public let encryptedSettings: Ciphertext
    public let encryptedInternalSettings: Ciphertext
    public let parent: ParentGroup?

    public init(groupId: GroupId, type: GroupType, joinMode: JoinMode, permissionMode: PermissionMode, selfSignedAdminCertificate: Certificate, encryptedSettings: Ciphertext, encryptedInternalSettings: Ciphertext, parent: ParentGroup?) {
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
