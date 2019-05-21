public struct JoinGroupResponse: Codable {
    public let serverSignedMembershipCertificate: Certificate

    public init(serverSignedMembershipCertificate: Certificate) {
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
    }
}
