import Foundation

public struct CreateGroupResponse: Codable {
    public let url: URL
    public let serverSignedAdminCertificate: Membership

    public init(url: URL, serverSignedAdminCertificate: Membership) {
        self.url = url
        self.serverSignedAdminCertificate = serverSignedAdminCertificate
    }
}
