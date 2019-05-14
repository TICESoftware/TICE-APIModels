public struct GetUserPublicKeysResponse: Codable {
    public let signingKey: PublicKey
    public let identityKey: PublicKey
    public let signedPrekey: PublicKey
    public let prekeySignature: Data
    public let oneTimePrekey: PublicKey?

    public init(signingKey: PublicKey, identityKey: PublicKey, signedPrekey: PublicKey, prekeySignature: Data, oneTimePrekey: PublicKey?) {
        self.signingKey = signingKey
        self.identityKey = identityKey
        self.signedPrekey = signedPrekey
        self.prekeySignature = prekeySignature
        self.oneTimePrekey = oneTimePrekey
    }
}
