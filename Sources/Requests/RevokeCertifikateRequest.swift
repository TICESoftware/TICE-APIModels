public struct RevokeCertificateRequest: Codable {
    public let revocationCertificate: String

    public init(revocationCertificate: String) {
        self.revocationCertificate = revocationCertificate
    }
}
