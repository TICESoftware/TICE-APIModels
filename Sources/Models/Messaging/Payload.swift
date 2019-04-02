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
    public let latitude: Double
    public let longitude: Double
    public let altitude: Double
    public let horizontalAccuracy: Double
    public let verticalAccuracy: Double
    public let timestamp: Date

    public init(latitude: Double, longitude: Double, altitude: Double, horizontalAccuracy: Double, verticalAccuracy: Double, timestamp: Date) {
        self.latitude = latitude
        self.longitude = longitude
        self.altitude = altitude
        self.horizontalAccuracy = horizontalAccuracy
        self.verticalAccuracy = verticalAccuracy
        self.timestamp = timestamp
    }
}
