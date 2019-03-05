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

public struct AuthenticatedPayload<T>: Payload where T: Codable {
    public let payload: T
    public let signature: String

    public init(payload: T, signature: String) {
        self.payload = payload
        self.signature = signature
    }
}
