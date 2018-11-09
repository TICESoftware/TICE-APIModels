public struct User {
    public let name: String = "John"
    public let publicKey: String
    
    public init(publicKey: String) {
        self.publicKey = publicKey
    }
}
