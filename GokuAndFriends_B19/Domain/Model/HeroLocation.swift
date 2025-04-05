//
//  HeroLocarion.swift
//  GokuAndFriends_B19
//
//  Created by Luis Quintero on 27/3/25.
//

import Foundation
import MapKit

struct HeroLocation {
    let id: String
    let longitude: String?
    let latitude: String?
    let date: String?
    let hero: Hero?
}

extension HeroLocation {
    
    // Variable calculada para crea un CLLocationCoordinate2D a partir de la latitud y la longitud
    var coordinate: CLLocationCoordinate2D?  {
        guard let longitude,
              let latitude,
              let longitudeDouble = Double(longitude),
              let latitudeDouble = Double(latitude) else {
            return nil
        }
        return CLLocationCoordinate2D(latitude: latitudeDouble, longitude: longitudeDouble)
    }
}
