public typealias PhoneNumber = String

public struct VerifyPhoneNumberRequest: Codable {
    public let phoneNumber: PhoneNumber
    
    public init(phoneNumber: PhoneNumber) {
        self.phoneNumber = phoneNumber
    }
}
