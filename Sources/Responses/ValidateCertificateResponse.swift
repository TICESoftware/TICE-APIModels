public struct ValidateCertificateResponse: Codable {
    public let valid: Bool

    public init(valid: Bool) {
        self.valid = valid
    }
}
