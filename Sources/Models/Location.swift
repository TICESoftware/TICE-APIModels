//
//  Copyright © 2019 Anbion. All rights reserved.
//

import CoreLocation

public struct Location: Codable {
    public let latitude: Double
    public let longitude: Double
    public let altitude: Double
    public let horizontalAccuracy: Double
    public let verticalAccuracy: Double
    public let timestamp: Date

    public init(latitude: Double, longitude: Double, altitude: Double, horizontalAccuracy: Double, verticalAccuracy: Double, timestamp: Date) {
        self.latitude = latitude
        self.longitude = longitude
        self.altitude = altitude
        self.horizontalAccuracy = horizontalAccuracy
        self.verticalAccuracy = verticalAccuracy
        self.timestamp = timestamp
    }
}

public extension CLLocation {
    convenience init(_ location: Location) {
        let coordinates = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
        self.init(coordinate: coordinates, altitude: location.altitude, horizontalAccuracy: location.horizontalAccuracy, verticalAccuracy: location.verticalAccuracy, timestamp: location.timestamp)
    }

    var location: Location {
        return Location(latitude: coordinate.latitude, longitude: coordinate.longitude, altitude: altitude, horizontalAccuracy: horizontalAccuracy, verticalAccuracy: verticalAccuracy, timestamp: timestamp)
    }
}
