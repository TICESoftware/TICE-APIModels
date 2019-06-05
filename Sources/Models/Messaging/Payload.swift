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
        case memberDeleted
        case settingsUpdated
    }
}

public struct LocationUpdate: Payload {
    public let location: Location

    public init(location: Location) {
        self.location = location
    }
}

public struct FewOneTimePrekeys: Payload {
    public let remaining: Int
    
    public init(remaining: Int) {
        self.remaining = remaining
    }
}

public struct ResetConversation: Payload { }
