public typealias DeviceId = String

public struct VerifyRequest: Codable {
    public let deviceId: DeviceId
    
    public init(deviceId: DeviceId) {
        self.deviceId = deviceId
    }
}
