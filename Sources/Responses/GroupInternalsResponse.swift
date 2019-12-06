import Foundation

public struct GroupInternalsResponse: Codable {

    public let groupId: GroupId
    public let parentGroupId: GroupId?
    public let type: GroupType
    public let joinMode: JoinMode
    public let permissionMode: PermissionMode
    public let url: URL
    public let encryptedSettings: Ciphertext
    public let encryptedInternalSettings: Ciphertext
    public let encryptedMemberships: [Ciphertext]
    public let receipts: [ReceiptId]
    public let parentEncryptedGroupKey: Ciphertext?
    public let children: [GroupId]
    public let groupTag: GroupTag

    public init(groupId: GroupId, parentGroupId: GroupId?, type: GroupType, joinMode: JoinMode, permissionMode: PermissionMode, url: URL, encryptedSettings: Ciphertext, encryptedInternalSettings: Ciphertext, encryptedMemberships: [Ciphertext], receipts: [ReceiptId], parentEncryptedGroupKey: Ciphertext?, children: [GroupId], groupTag: GroupTag) {
        self.groupId = groupId
        self.parentGroupId = parentGroupId
        self.type = type
        self.joinMode = joinMode
        self.permissionMode = permissionMode
        self.url = url
        self.encryptedSettings = encryptedSettings
        self.encryptedInternalSettings = encryptedInternalSettings
        self.encryptedMemberships = encryptedMemberships
        self.receipts = receipts
        self.parentEncryptedGroupKey = parentEncryptedGroupKey
        self.children = children
        self.groupTag = groupTag
    }
}
