//
//  LocationAnnotation.swift
//  LetsMeetModels
//
//  Created by Fabio Tacke on 20.04.19.
//

import Foundation
import CoreLocation
import MapKit

public class LocationAnnotation: NSObject, MKAnnotation {

    public var location: CLLocation {
        didSet {
            coordinate = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        }
    }

    public init(location: CLLocation) {
        self.location = location

        self.coordinate = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        self.subtitle = DateFormatter.localizedString(from: location.timestamp, dateStyle: .short, timeStyle: .short)
    }

    // MARK: MKAnnotation

    @objc dynamic public var coordinate: CLLocationCoordinate2D
    @objc dynamic public var title: String?
    @objc dynamic public var subtitle: String?
}
