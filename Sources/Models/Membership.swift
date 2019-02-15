public struct Membership: Codable {
    public let userId: String
    public let owner: Bool

    public init(userId: String, owner: Bool = false) {
        self.userId = userId
        self.owner = owner
    }
}
