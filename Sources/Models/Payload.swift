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
