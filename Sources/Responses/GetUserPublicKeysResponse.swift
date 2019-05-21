public struct GetUserPublicKeysResponse: Codable {
    public let signingKey: PublicKey
    public let identityKey: PublicKey
    public let signedPrekey: PublicKey
    public let prekeySignature: Signature
    public let oneTimePrekey: PublicKey?

    public init(signingKey: PublicKey, identityKey: PublicKey, signedPrekey: PublicKey, prekeySignature: Signature, oneTimePrekey: PublicKey?) {
        self.signingKey = signingKey
        self.identityKey = identityKey
        self.signedPrekey = signedPrekey
        self.prekeySignature = prekeySignature
        self.oneTimePrekey = oneTimePrekey
    }
}
