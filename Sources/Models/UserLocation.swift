//
//  Copyright © 2019 Anbion. All rights reserved.
//  

import Foundation
import CoreLocation

public class UserLocation: LocationAnnotation {

    public var user: User

    public init(location: CLLocation, user: User) {
        self.user = user

        super.init(location: location)

        self.title = user.userId.uuidString
    }
}
