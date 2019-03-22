import Foundation

public struct GroupInformationResponse: Codable {
    
    public let groupId: GroupId
    public let type: GroupType
    public let joinMode: JoinMode
    public let permissionMode: PermissionMode
    public let url: URL
    public let encryptedSettings: String

    // MARK: Information only for members of this or parent groups

    public let encryptedInternalSettings: String?
    public let encryptedMemberships: [Membership]?
    public let parentGroupId: GroupId?
    public let children: [ChildGroup]?

    public init(groupId: GroupId, type: GroupType, joinMode: JoinMode, permissionMode: PermissionMode, url: URL, encryptedSettings: String, encryptedInternalSettings: String?, encryptedMemberships: [Membership]?, parentGroupId: GroupId?, children: [ChildGroup]?) {
        self.groupId = groupId
        self.type = type
        self.joinMode = joinMode
        self.permissionMode = permissionMode
        self.url = url
        self.encryptedSettings = encryptedSettings
        self.encryptedMemberships = encryptedMemberships
        self.encryptedInternalSettings = encryptedInternalSettings
        self.parentGroupId = parentGroupId
        self.children = children
    }
}
