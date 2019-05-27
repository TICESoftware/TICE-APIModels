//
//  Copyright © 2018 Anbion. All rights reserved.
//  

import Foundation

public protocol UserProtocol {
    var userId: UserId { get }
    var publicSigningKey: PublicKey { get set }
    var publicName: String? { get set }
}
