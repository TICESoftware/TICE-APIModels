import Foundation

public struct CreateGroupResponse: Codable {
    public let url: URL
    public let serverSignedAdminCertificate: Certificate
    public let groupTag: GroupTag

    public init(url: URL, serverSignedAdminCertificate: Certificate, groupTag: GroupTag) {
        self.url = url
        self.serverSignedAdminCertificate = serverSignedAdminCertificate
        self.groupTag = groupTag
    }
}
