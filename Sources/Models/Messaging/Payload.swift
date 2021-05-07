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
    public let ciphertext: Ciphertext
    public let encryptedKey: Ciphertext

    public init(ciphertext: Ciphertext, encryptedKey: Ciphertext) {
        self.ciphertext = ciphertext
        self.encryptedKey = encryptedKey
    }
}

public struct GroupInvitation: Payload {
    public let groupId: GroupId

    public init(groupId: GroupId) {
        self.groupId = groupId
    }
}

public struct GroupUpdate: Payload {
    public let groupId: GroupId
    public let action: GroupUpdate.Action

    public init(groupId: GroupId, action: Action) {
        self.groupId = groupId
        self.action = action
    }

    public enum Action: String, Codable {
        case groupDeleted
        case memberAdded
        case memberUpdated
        case memberDeleted
        case settingsUpdated
        case childGroupCreated
        case childGroupDeleted
    }
}

public struct LocationUpdateV2: Payload {
    public let location: Location
    public let groupId: GroupId
    
    public init(location: Location, groupId: GroupId) {
        self.location = location
        self.groupId = groupId
    }
}

public struct FewOneTimePrekeys: Payload {
    public let remaining: Int
    
    public init(remaining: Int) {
        self.remaining = remaining
    }
}

public struct ResetConversation: Payload {
    public init() { }
}

public struct UserUpdate: Payload {
    public let userId: UserId

    public init(userId: UserId) {
        self.userId = userId
    }
}

public struct ChatMessage: Payload {
    public let groupId: GroupId
    public let text: String?
    public let imageData: Data?

    public init(groupId: GroupId, text: String?, imageData: Data?) {
        self.groupId = groupId
        self.text = text
        self.imageData = imageData
    }
}

public struct LocationSharingUpdate: Payload {
    public let groupId: GroupId
    public let sharingEnabled: Bool
    public init(groupId: GroupId, sharingEnabled: Bool) {
        self.groupId = groupId
        self.sharingEnabled = sharingEnabled
    }
}

public struct LocationSharingRequest: Payload {
    public let groupId: GroupId
    public init(groupId: GroupId) {
        self.groupId = groupId
    }
}
