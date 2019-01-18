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

public struct EncryptedPayloadContainer: Payload {
    public let ciphertext: String
    public let encryptedKey: String
    
    public init(ciphertext: String, encryptedKey: String) {
        self.ciphertext = ciphertext
        self.encryptedKey = encryptedKey
    }
}

public struct GroupInvitation: Payload {
    public let groupId: String
    
    public init(groupId: String) {
        self.groupId = groupId
    }
}
