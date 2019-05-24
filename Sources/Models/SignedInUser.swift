//
//  Copyright © 2019 Anbion. All rights reserved.
//

public class SignedInUser: User {
    public let signingKeyPair: KeyPair

    public init(userId: UserId, signingKeyPair: KeyPair, publicName: String?) {
        self.signingKeyPair = signingKeyPair
        super.init(userId: userId, publicSigningKey: signingKeyPair.publicKey, publicName: publicName)
    }
}
