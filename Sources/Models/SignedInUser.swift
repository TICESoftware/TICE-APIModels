//
//  Copyright © 2019 Anbion. All rights reserved.
//

public class SignedInUser: User {
    public let privateSigningKey: PrivateKey

    private enum CodingKeys: String, CodingKey {
        case privateSigningKey
    }

    public init(userId: UserId, privateSigningKey: PrivateKey, publicSigningKey: PublicKey, publicName: String?) {
        self.privateSigningKey = privateSigningKey
        super.init(userId: userId, publicSigningKey: publicSigningKey, publicName: publicName)
    }

    public required init(from decoder: Decoder) throws {
        fatalError("init(from:) has not been implemented")
    }
}
