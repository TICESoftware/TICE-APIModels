public struct GetMessagesResponse: Codable {
    public let messages: [Envelope]
    
    public init(messages: [Envelope]) {
        self.messages = messages
    }
}
