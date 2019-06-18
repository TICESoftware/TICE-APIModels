public struct CertificateRequest: Codable {
    public let certificate: Certificate

    public init(certificate: Certificate) {
        self.certificate = certificate
    }
}

public typealias RevokeCertificateRequest = CertificateRequest
public typealias CertificateBlacklistedRequest = CertificateRequest
public typealias RenewCertificateRequest = CertificateRequest
public typealias RenewCertificateResponse = CertificateRequest
