//
//  Copyright © 2019 Anbion. All rights reserved.
//

public class SignedInUser: User {
    public let signingKeyPair: SigningKeyPair

    public init(userId: UserId, signingKeyPair: SigningKeyPair) {
        self.signingKeyPair = signingKeyPair

        super.init(userId: userId, publicSigningKey: signingKeyPair.publicKey)
    }
}
