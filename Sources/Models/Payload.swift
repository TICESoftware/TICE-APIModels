//
//  Copyright © 2019 Anbion. All rights reserved.
//  

import Foundation

public protocol Payload: Codable {}

public struct EnvelopeBundle: Payload {
    public let envelopes: [Envelope]
}

public struct VerificationMessage: Payload {
    public let verificationCode: String
    
    public init(verificationCode: String) {
        self.verificationCode = verificationCode
    }
}

public struct EncryptedMessage: Payload {
    public let encryptedMessage: String
    public let encryptedMessageKey: String
    
    public init(encryptedMessage: String, encryptedMessageKey: String) {
        self.encryptedMessage = encryptedMessage
        self.encryptedMessageKey = encryptedMessageKey
    }
}

public struct GroupInvitation: Payload {
    public let groupId: String
    
    public init(groupId: String) {
        self.groupId = groupId
    }
}
