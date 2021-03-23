import Foundation

public struct CertificateRevokedResponse: Codable {
    public let revokedAt: Date?

    public init(revokedAt: Date?) {
        self.revokedAt = revokedAt
    }
}
