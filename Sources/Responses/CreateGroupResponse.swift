import Foundation

public struct CreateGroupResponse: Codable {
    public let url: URL
    public let serverSignedOwnershipCertificate: String

    public init(url: URL, serverSignedOwnershipCertificate: String) {
        self.url = url
        self.serverSignedOwnershipCertificate = serverSignedOwnershipCertificate
    }
}
