//
//  File.swift
//  
//
//  Created by Andreas Ganske on 22.03.21.
//

import Foundation
import XCTest
@testable import TICEModels

class PayloadTests: XCTestCase {
    func test() throws {
        let payload = LocationUpdateV2(location: Location(latitude: 0, longitude: 0), groupId: GroupId())
        let container = PayloadContainer(payloadType: .locationUpdateV2, payload: payload)
        
        let encoded = try JSONEncoder().encode(container)
        let decoded = try JSONDecoder().decode(PayloadContainer.self, from: encoded)
        XCTAssertEqual(decoded.payloadType, .locationUpdateV2)
        XCTAssertEqual((decoded.payload as! LocationUpdateV2).location, payload.location)
    }
}
