//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public protocol Payload: Codable {}

public struct VerificationMessage: Payload {
    public let verificationCode: String

    public init(verificationCode: String) {
        self.verificationCode = verificationCode
    }
}

public struct EncryptedPayloadContainer: Payload {
    public let ciphertext: String
    public let signature: String
    public let encryptedKey: String

    public init(ciphertext: String, signature: String, encryptedKey: String) {
        self.ciphertext = ciphertext
        self.signature = signature
        self.encryptedKey = encryptedKey
    }
}

public struct GroupInvitation: Payload {
    public let groupId: String

    public init(groupId: String) {
        self.groupId = groupId
    }
}

public struct GroupUpdate: Payload {
    public let groupId: String
    public let action: GroupUpdate.Action

    public init(groupId: String, action: Action) {
        self.groupId = groupId
        self.action = action
    }

    public enum Action: String, Codable {
        case groupDeleted
        case memberAdded
        case memberDeleted
        case settingsUpdated
    }
}

// MARK: Messages

public struct MeetUpInvitation: Payload {
    public let meetUpId: UUID
    public let groupId: String
    public let ownerId: String
    public let name: String?
    public let location: String?

    public init(meetUpId: UUID, groupId: String, ownerId: String, name: String? = nil, location: String? = nil) {
        self.meetUpId = meetUpId
        self.groupId = groupId
        self.ownerId = ownerId
        self.name = name
        self.location = location
    }
}

public struct MeetUpDeletion: Payload {
    public let meetUpId: UUID
    public let groupId: String

    public init(meetUpId: UUID, groupId: String) {
        self.meetUpId = meetUpId
        self.groupId = groupId
    }
}

public struct MeetUpJoin: Payload {
    public let meetUpId: UUID
    public let groupId: String
    public let userId: String

    public init(meetUpId: UUID, groupId: String, userId: String) {
        self.meetUpId = meetUpId
        self.groupId = groupId
        self.userId = userId
    }
}

public struct MeetUpLeave: Payload {
    public let meetUpId: UUID
    public let groupId: String
    public let userId: String

    public init(meetUpId: UUID, groupId: String, userId: String) {
        self.meetUpId = meetUpId
        self.groupId = groupId
        self.userId = userId
    }
}
