public typealias PhoneNumber = String

public struct FilterUsersResponseUser: Codable {
    public let userId: UserId
    public let phoneNumber: PhoneNumber

    public init(userId: UserId, phoneNumber: PhoneNumber) {
        self.userId = userId
        self.phoneNumber = phoneNumber
    }
}

public typealias FilterUsersResponse = [FilterUsersResponseUser]
