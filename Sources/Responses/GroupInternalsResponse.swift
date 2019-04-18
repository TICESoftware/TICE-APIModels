import Foundation

public struct GroupInternalsResponse: Codable {

    public let groupId: GroupId
    public let parentGroupId: GroupId?
    public let type: GroupType
    public let joinMode: JoinMode
    public let permissionMode: PermissionMode
    public let url: URL
    public let encryptedSettings: String
    public let encryptedInternalSettings: String
    public let encryptedMemberships: [Membership]
    public let parentEncryptedGroupKey: String?
    public let children: [GroupId]
    public let groupTag: GroupTag

    public init(groupId: GroupId, parentGroupId: GroupId?, type: GroupType, joinMode: JoinMode, permissionMode: PermissionMode, url: URL, encryptedSettings: String, encryptedInternalSettings: String, encryptedMemberships: [Membership], parentEncryptedGroupKey: String?, children: [GroupId], groupTag: GroupTag) {
        self.groupId = groupId
        self.parentGroupId = parentGroupId
        self.type = type
        self.joinMode = joinMode
        self.permissionMode = permissionMode
        self.url = url
        self.encryptedSettings = encryptedSettings
        self.encryptedInternalSettings = encryptedInternalSettings
        self.encryptedMemberships = encryptedMemberships
        self.parentEncryptedGroupKey = parentEncryptedGroupKey
        self.children = children
        self.groupTag = groupTag
    }
}
