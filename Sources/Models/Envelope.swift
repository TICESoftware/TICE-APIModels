//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public typealias Sender = String

public struct Envelope: Codable {
    public typealias Identifier = UUID
    public typealias CollapseIdentifier = String

    public var id: Identifier
    public var senderId: Sender
    public var timestamp: Date
    public var serverTimestamp: Date
    public var collapseId: CollapseIdentifier?
    public var payloadContainer: PayloadContainer

    public init(id: Identifier, senderId: Sender, timestamp: Date, serverTimestamp: Date, collapseId: CollapseIdentifier?, payloadContainer: PayloadContainer) {
        self.id = id
        self.senderId = senderId
        self.timestamp = timestamp
        self.serverTimestamp = serverTimestamp
        self.collapseId = collapseId
        self.payloadContainer = payloadContainer
    }
}
