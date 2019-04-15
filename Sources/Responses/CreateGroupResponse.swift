import Foundation

public struct CreateGroupResponse: Codable {
    public let url: URL
    public let serverSignedAdminCertificate: Membership
    public let settingsETAG: ETAG
    public let internalsETAG: ETAG

    public init(url: URL, serverSignedAdminCertificate: Membership, settingsETAG: ETAG, internalsETAG: ETAG) {
        self.url = url
        self.serverSignedAdminCertificate = serverSignedAdminCertificate
        self.settingsETAG = settingsETAG
        self.internalsETAG = internalsETAG
    }
}
