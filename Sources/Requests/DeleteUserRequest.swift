public struct DeleteUserRequest: Codable {
    public let identityKey: String
    
    public init(identityKey: String) {
        self.identityKey = identityKey
    }
}
