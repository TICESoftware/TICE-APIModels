public struct ValidateCertificateRequest: Codable {
    public let certificate: String

    public init(certificate: String) {
        self.certificate = certificate
    }
}
