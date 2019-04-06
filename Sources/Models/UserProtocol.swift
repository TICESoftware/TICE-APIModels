//
//  Copyright © 2018 Anbion. All rights reserved.
//  

import Foundation

public protocol UserProtocol {
    var userId: UserId { get }
    var publicKeys: UserPublicKeys { get }
}
