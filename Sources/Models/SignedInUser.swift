//
//  Copyright © 2019 Anbion. All rights reserved.
//

public class SignedInUser: User {
    public let signingKeyPair: KeyPair

    private enum CodingKeys: String, CodingKey {
        case signingKeyPair
    }

    public init(userId: UserId, signingKeyPair: KeyPair, publicName: String?) {
        self.signingKeyPair = signingKeyPair
        super.init(userId: userId, publicSigningKey: signingKeyPair.publicKey, publicName: publicName)
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.signingKeyPair = try container.decode(KeyPair.self, forKey: .signingKeyPair)
        try super.init(from: decoder)
    }
}
