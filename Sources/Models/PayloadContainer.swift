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
        case meetUpInvitationV1 = "meetUpInvitation/v1"
        case meetUpDeletionV1 = "meetUpDeletion/v1"
        case meetUpJoinV1 = "meetUpJoin/v1"
        case meetUpLeaveV1 = "meetUpLeave/v1"
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
        case .meetUpInvitationV1:
            payload = try container.decode(MeetUpInvitation.self, forKey: .payload)
        case .meetUpDeletionV1:
            payload = try container.decode(MeetUpDeletion.self, forKey: .payload)
        case .meetUpJoinV1:
            payload = try container.decode(MeetUpJoin.self, forKey: .payload)
        case .meetUpLeaveV1:
            payload = try container.decode(MeetUpLeave.self, forKey: .payload)
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
        case .meetUpInvitationV1:
            try container.encode(payload as! MeetUpInvitation, forKey: .payload)
        case .meetUpDeletionV1:
            try container.encode(payload as! MeetUpDeletion, forKey: .payload)
        case .meetUpJoinV1:
            try container.encode(payload as! MeetUpJoin, forKey: .payload)
        case .meetUpLeaveV1:
            try container.encode(payload as! MeetUpLeave, forKey: .payload)
        }
    }
}
