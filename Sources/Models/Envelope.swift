//
//  Copyright © 2019 Anbion. All rights reserved.
//  

import Foundation

public struct Envelope: Codable {
    
    public typealias Identifier = String
    public typealias Sender = String
    
    public var id: Identifier
    public var sender: Sender
    public var payloadType: PayloadType
    public var payload: Payload
    
    private enum CodingKeys: String, CodingKey {
        case id
        case sender
        case payloadType
        case payload
    }
    
    public enum PayloadType: String, Codable {
        case verificationMessageV1 = "verificationMessage/v1"
        case encryptedMessageV1 = "encryptedMessage/v1"
        case groupInvitationV1 = "groupInvitation/v1"
        case envelopeBundleV1 = "envelopeBundle/v1"
    }
    
    public init(id: Identifier, sender: Sender, payloadType: PayloadType, payload: Payload) {
        self.id = id
        self.sender = sender
        self.payloadType = payloadType
        self.payload = payload
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try container.decode(Identifier.self, forKey: .id)
        sender = try container.decode(Sender.self, forKey: .sender)
        payloadType = try container.decode(PayloadType.self, forKey: .payloadType)
        
        switch payloadType {
        case .verificationMessageV1:
            payload = try container.decode(VerificationMessage.self, forKey: .payload)
        case .encryptedMessageV1:
            payload = try container.decode(EncryptedMessage.self, forKey: .payload)
        case .groupInvitationV1:
            payload = try container.decode(GroupInvitation.self, forKey: .payload)
        case .envelopeBundleV1:
            payload = try container.decode(EnvelopeBundle.self, forKey: .payload)
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(sender, forKey: .sender)
        try container.encode(payloadType, forKey: .payloadType)
        
        switch payloadType {
        case .verificationMessageV1:
            try container.encode(payload as! VerificationMessage, forKey: .payload)
        case .encryptedMessageV1:
            try container.encode(payload as! EncryptedMessage, forKey: .payload)
        case .groupInvitationV1:
            try container.encode(payload as! GroupInvitation, forKey: .payload)
        case .envelopeBundleV1:
            try container.encode(payload as! EnvelopeBundle, forKey: .payload)
        }
    }
}
