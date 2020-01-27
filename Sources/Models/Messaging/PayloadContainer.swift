//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct PayloadContainer: Codable {

    public enum PayloadType: String, Codable {
        case verificationMessageV1 = "verificationMessage/v1"
        case encryptedPayloadContainerV1 = "encryptedPayloadContainer/v1"
        case groupInvitationV1 = "groupInvitation/v1"
        case groupUpdateV1 = "groupUpdate/v1"
        case locationUpdateV1 = "locationUpdate/v1"
        case fewOneTimePrekeysV1 = "fewOneTimePrekeys/v1"
        case resetConversationV1 = "resetConversation/v1"
        case userUpdateV1 = "userUpdate/v1"
        case chatMessageV1 = "chatMessage/v1"
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
        case .groupUpdateV1:
            payload = try container.decode(GroupUpdate.self, forKey: .payload)
        case .locationUpdateV1:
            payload = try container.decode(LocationUpdate.self, forKey: .payload)
        case .fewOneTimePrekeysV1:
            payload = try container.decode(FewOneTimePrekeys.self, forKey: .payload)
        case .resetConversationV1:
            payload = try container.decode(ResetConversation.self, forKey: .payload)
        case .userUpdateV1:
            payload = try container.decode(UserUpdate.self, forKey: .payload)
        case .chatMessageV1:
            payload = try container.decode(ChatMessage.self, forKey: .payload)
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
        case .groupUpdateV1:
            try container.encode(payload as! GroupUpdate, forKey: .payload)
        case .locationUpdateV1:
            try container.encode(payload as! LocationUpdate, forKey: .payload)
        case .fewOneTimePrekeysV1:
            try container.encode(payload as! FewOneTimePrekeys, forKey: .payload)
        case .resetConversationV1:
            try container.encode(payload as! ResetConversation, forKey: .payload)
        case .userUpdateV1:
            try container.encode(payload as! UserUpdate, forKey: .payload)
        case .chatMessageV1:
            try container.encode(payload as! ChatMessage, forKey: .payload)
        }
    }
}
