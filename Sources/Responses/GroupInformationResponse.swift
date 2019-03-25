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
    public let parentGroup: ParentGroup?
    public let children: [GroupId]?

    public init(groupId: GroupId, type: GroupType, joinMode: JoinMode, permissionMode: PermissionMode, url: URL, encryptedSettings: String, encryptedInternalSettings: String?, encryptedMemberships: [Membership]?, parentGroup: ParentGroup?, children: [GroupId]?) {
        self.groupId = groupId
        self.type = type
        self.joinMode = joinMode
        self.permissionMode = permissionMode
        self.url = url
        self.encryptedSettings = encryptedSettings
        self.encryptedMemberships = encryptedMemberships
        self.encryptedInternalSettings = encryptedInternalSettings
        self.parentGroup = parentGroup
        self.children = children
    }
}
