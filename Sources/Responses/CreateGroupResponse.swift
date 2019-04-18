import Foundation

public struct CreateGroupResponse: Codable {
    public let url: URL
    public let serverSignedAdminCertificate: Membership
    public let groupTag: GroupTag

    public init(url: URL, serverSignedAdminCertificate: Membership, groupTag: GroupTag) {
        self.url = url
        self.serverSignedAdminCertificate = serverSignedAdminCertificate
        self.groupTag = groupTag
    }
}
