import Foundation

public struct CertificateBlacklistedResponse: Codable {
    public let revokedAt: Date?

    public init(revokedAt: Date?) {
        self.revokedAt = revokedAt
    }
}
