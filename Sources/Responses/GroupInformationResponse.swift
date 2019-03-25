import Foundation

public struct GroupInformationResponse: Codable {
    
    public let groupId: GroupId
    public let parentGroupId: GroupId?
    public let type: GroupType
    public let joinMode: JoinMode
    public let permissionMode: PermissionMode
    public let url: URL
    public let encryptedSettings: String

    public init(groupId: GroupId, parentGroupId: GroupId?, type: GroupType, joinMode: JoinMode, permissionMode: PermissionMode, url: URL, encryptedSettings: String) {
        self.groupId = groupId
        self.parentGroupId = parentGroupId
        self.type = type
        self.joinMode = joinMode
        self.permissionMode = permissionMode
        self.url = url
        self.encryptedSettings = encryptedSettings
    }
}
