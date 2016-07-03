//
//  UniversityFloor.swift
//  InnoMaps
//
//  Created by Nikolay Yushkevich on 20.06.16.
//  Copyright © 2016 Nikolay Yushkevich. All rights reserved.
//

import Foundation
import MapKit

class UniversityFloor: NSObject {
    
    var midCoordinate : CLLocationCoordinate2D
    var overlayTopLeftCoordinate : CLLocationCoordinate2D
    var overlayTopRightCoordinate : CLLocationCoordinate2D
    var overlayBottomLeftCoordinate : CLLocationCoordinate2D
    var overlayBottomRightCoordinate : CLLocationCoordinate2D
   
    init(midCoordinate: CLLocationCoordinate2D,
         overlayTopLeftCoordinate: CLLocationCoordinate2D,
         overlayTopRightCoordinate: CLLocationCoordinate2D,
         overlayBottomLeftCoordinate: CLLocationCoordinate2D,
         overlayBottomRightCoordinate: CLLocationCoordinate2D) {
        self.midCoordinate = midCoordinate
        self.overlayTopLeftCoordinate = overlayTopLeftCoordinate
        self.overlayTopRightCoordinate = overlayTopRightCoordinate
        self.overlayBottomLeftCoordinate = overlayBottomLeftCoordinate
        self.overlayBottomRightCoordinate = overlayBottomRightCoordinate
    }
    

}
