//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct Envelope: Codable {
    public typealias Identifier = UUID
    public typealias CollapseIdentifier = String

    public var id: Identifier
    public var senderId: UserId
    public var timestamp: Date
    public var serverTimestamp: Date
    public var collapseId: CollapseIdentifier?
    public var conversationInvitation: ConversationInvitation?
    public var payloadContainer: PayloadContainer

    public init(id: Identifier, senderId: UserId, timestamp: Date, serverTimestamp: Date, collapseId: CollapseIdentifier?, conversationInvitation: ConversationInvitation?, payloadContainer: PayloadContainer) {
        self.id = id
        self.senderId = senderId
        self.timestamp = timestamp
        self.serverTimestamp = serverTimestamp
        self.collapseId = collapseId
        self.conversationInvitation = conversationInvitation
        self.payloadContainer = payloadContainer
    }
}
