//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct Location: Codable, Hashable, Equatable {
    public var latitude: Double
    public var longitude: Double
    public var altitude: Double
    public var horizontalAccuracy: Double
    public var verticalAccuracy: Double
    public var course: Double?
    public var courseAccuracy: Double?
    public var speed: Double?
    public var speedAccuracy: Double?
    public var timestamp: Date
    
    public init(latitude: Double, longitude: Double, altitude: Double = 0, horizontalAccuracy: Double = 0, verticalAccuracy: Double = -1, course: Double? = nil, courseAccuracy: Double? = nil, speed: Double? = nil, speedAccuracy: Double? = nil, timestamp: Date = Date()) {
        self.latitude = latitude
        self.longitude = longitude
        self.altitude = altitude
        self.horizontalAccuracy = horizontalAccuracy
        self.verticalAccuracy = verticalAccuracy
        self.course = course
        self.courseAccuracy = courseAccuracy
        self.speed = speed
        self.speedAccuracy = speedAccuracy
        self.timestamp = timestamp
    }
    
    public init(coordinate: CLLocationCoordinate2D, altitude: Double = 0, horizontalAccuracy: Double = 0, verticalAccuracy: Double = -1, course: Double? = nil, courseAccuracy: Double? = nil, speed: Double? = nil, speedAccuracy: Double? = nil, timestamp: Date = Date()) {
        self.init(latitude: coordinate.latitude, longitude: coordinate.longitude, altitude: altitude, horizontalAccuracy: horizontalAccuracy, verticalAccuracy: verticalAccuracy, course: course, courseAccuracy: courseAccuracy, speed: speed, speedAccuracy: speedAccuracy, timestamp: timestamp)
    }
    
    public var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

#if canImport(CoreLocation)
import CoreLocation

public extension CLLocation {
    convenience init(_ location: Location) {
        let coordinates = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
        if #available(iOS 13.4, OSX 10.15.4, *) {
            self.init(coordinate: coordinates, altitude: location.altitude, horizontalAccuracy: location.horizontalAccuracy, verticalAccuracy: location.verticalAccuracy, course: location.course ?? -1, courseAccuracy: location.courseAccuracy ?? -1, speed: location.speed ?? -1, speedAccuracy: location.speedAccuracy ?? -1, timestamp: location.timestamp)
        } else {
            self.init(coordinate: coordinates, altitude: location.altitude, horizontalAccuracy: location.horizontalAccuracy, verticalAccuracy: location.verticalAccuracy, course: location.course ?? -1, speed: location.speed ?? -1, timestamp: location.timestamp)
        }
    }

    var location: Location {
        if #available(iOS 13.4, OSX 10.15.4, *) {
            return Location(latitude: coordinate.latitude, longitude: coordinate.longitude, altitude: altitude, horizontalAccuracy: horizontalAccuracy, verticalAccuracy: verticalAccuracy, course: course, courseAccuracy: courseAccuracy, speed: speed, speedAccuracy: speedAccuracy, timestamp: timestamp)
        } else {
            return Location(latitude: coordinate.latitude, longitude: coordinate.longitude, altitude: altitude, horizontalAccuracy: horizontalAccuracy, verticalAccuracy: verticalAccuracy, course: course, courseAccuracy: -1, speed: speed, speedAccuracy: -1, timestamp: timestamp)
        }
    }
}
#endif
