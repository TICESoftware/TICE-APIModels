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
    public var collapseId: CollapseIdentifier?
    public var payloadContainer: PayloadContainer

    public init(id: Identifier, senderId: Sender, timestamp: Date, collapseId: CollapseIdentifier?, payloadContainer: PayloadContainer) {
        self.id = id
        self.senderId = senderId
        self.timestamp = timestamp
        self.collapseId = collapseId
        self.payloadContainer = payloadContainer
    }
}

public struct PayloadContainer: Codable {
    
    public enum PayloadType: String, Codable {
        case verificationMessageV1 = "verificationMessage/v1"
        case encryptedPayloadContainerV1 = "encryptedPayloadContainer/v1"
        case groupInvitationV1 = "groupInvitation/v1"
    }
    
    public var payloadType: PayloadType
    public var payload: Payload
    
    private enum CodingKeys: String, CodingKey {
        case payloadType
        case payload
    }

    public init(payloadType: PayloadType, payload: Payload) {
        self.payloadType = payloadType
        self.payload = payload
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        payloadType = try container.decode(PayloadType.self, forKey: .payloadType)
        
        switch payloadType {
        case .verificationMessageV1:
            payload = try container.decode(VerificationMessage.self, forKey: .payload)
        case .encryptedPayloadContainerV1:
            payload = try container.decode(EncryptedPayloadContainer.self, forKey: .payload)
        case .groupInvitationV1:
            payload = try container.decode(GroupInvitation.self, forKey: .payload)
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(payloadType, forKey: .payloadType)
        
        switch payloadType {
        case .verificationMessageV1:
            try container.encode(payload as! VerificationMessage, forKey: .payload)
        case .encryptedPayloadContainerV1:
            try container.encode(payload as! EncryptedPayloadContainer, forKey: .payload)
        case .groupInvitationV1:
            try container.encode(payload as! GroupInvitation, forKey: .payload)
        }
    }
}
