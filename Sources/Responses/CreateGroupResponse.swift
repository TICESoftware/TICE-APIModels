import Foundation

public struct CreateGroupResponse: Codable {
    public let url: URL
    public let serverSignedAdminCertificate: Membership
    public let etag: ETAG

    public init(url: URL, serverSignedAdminCertificate: Membership, etag: ETAG) {
        self.url = url
        self.serverSignedAdminCertificate = serverSignedAdminCertificate
        self.etag = etag
    }
}
