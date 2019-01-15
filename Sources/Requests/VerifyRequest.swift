public typealias DeviceId = String

public struct VerifyRequest: Codable {
    public let phoneNumber: DeviceId
    
    public init(phoneNumber: DeviceId) {
        self.phoneNumber = phoneNumber
    }
}
