public struct Membership: Codable {
    public let userId: String
    public let groupId: String
    public let owner: Bool

    public init(userId: String, groupId: String, owner: Bool = false) {
        self.userId = userId
        self.groupId = groupId
        self.owner = owner
    }
}
