public typealias DeviceId = String

public struct VerifyRequest: Codable {
    public let platform: Platform
    public let deviceId: DeviceId
    
    public init(platform: Platform, deviceId: DeviceId) {
        self.platform = platform
        self.deviceId = deviceId
    }
}
