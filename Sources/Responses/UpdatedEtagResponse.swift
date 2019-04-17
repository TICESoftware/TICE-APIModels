public struct UpdatedEtagResponse: Codable {
    public let etag: ETAG

    public init(etag: ETAG) {
        self.etag = etag
    }
}
