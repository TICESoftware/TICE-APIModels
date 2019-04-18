public struct UpdatedEtagResponse: Codable {
    public let groupTag: GroupTag

    public init(groupTag: GroupTag) {
        self.groupTag = groupTag
    }
}
