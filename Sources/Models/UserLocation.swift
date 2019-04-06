//
//  Copyright © 2019 Anbion. All rights reserved.
//  

import Foundation
import MapKit

public class UserLocation: NSObject, MKAnnotation {

    public var location: CLLocation {
        didSet {
            coordinate = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        }
    }
    public weak var user: User?

    public init(location: CLLocation, user: User) {
        self.location = location
        self.user = user

        self.coordinate = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        self.title = user.userId.uuidString
        self.subtitle = DateFormatter.localizedString(from: location.timestamp, dateStyle: .short, timeStyle: .short)
    }

    // MARK: MKAnnotation

    @objc dynamic public var coordinate: CLLocationCoordinate2D
    @objc dynamic public var title: String?
    @objc dynamic public var subtitle: String?
}
