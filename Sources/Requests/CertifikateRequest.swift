public struct CertificateRequest: Codable {
    public let certificate: String

    public init(certificate: String) {
        self.certificate = certificate
    }
}

typealias RevokeCertificateRequest = CertificateRequest
typealias CertificateBlacklistedRequest = CertificateRequest
