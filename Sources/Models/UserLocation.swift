//
//  Copyright © 2019 Anbion. All rights reserved.
//  

import Foundation
import CoreLocation

public class UserLocation: LocationAnnotation {

    public weak var user: User?

    public init(location: CLLocation, user: User) {
        super.init(location: location)
        self.user = user

       self.title = user.userId.uuidString
    }
}
