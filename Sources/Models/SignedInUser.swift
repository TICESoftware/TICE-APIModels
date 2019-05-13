//
//  Copyright © 2019 Anbion. All rights reserved.
//

public class SignedInUser: User {
    public let keyPairs: UserKeyPairs

    public init(userId: UserId, keyPairs: UserKeyPairs) {
        self.keyPairs = keyPairs

        super.init(userId: userId, publicSigningKey: self.keyPairs.signingKeyPair.publicKey)
    }
}
