public struct FilterUsersResponseUser: Codable {
    public let userId: String
    public let phoneNumber: PhoneNumber

    public init(userId: String, phoneNumber: PhoneNumber) {
        self.userId = userId
        self.phoneNumber = phoneNumber
    }
}

public typealias FilterUsersResponse = [FilterUsersResponseUser]
