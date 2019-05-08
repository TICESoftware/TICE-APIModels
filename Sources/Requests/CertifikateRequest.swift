public struct CertificateRequest: Codable {
    public let certificate: String

    public init(certificate: String) {
        self.certificate = certificate
    }
}

public typealias RevokeCertificateRequest = CertificateRequest
public typealias CertificateBlacklistedRequest = CertificateRequest
