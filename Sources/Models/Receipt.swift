//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public enum ReceiptType: String, Codable {
    case iOS
    case android
    case coupon
}

public enum ReceiptContent: String, Codable {
    case meetupDay5
    case meetupDay10
    case meetupDay20
}

public class Receipt: Codable {

    public let receiptId: ReceiptId
    public let owner: UserId
    public let content: ReceiptContent

    public var groupId: GroupId?
    public var expiresAt: Date?
    public var usableBy: UserId?
    public var usableIn: GroupId?

    public init(receiptId: ReceiptId, owner: UserId, content: ReceiptContent, groupId: GroupId?, expiresAt: Date?, usableBy: UserId?, usableIn: GroupId?) {
        self.receiptId = receiptId
        self.owner = owner
        self.content = content
        self.groupId = groupId
        self.expiresAt = expiresAt
        self.usableIn = usableIn
        self.usableBy = usableBy
    }
}
