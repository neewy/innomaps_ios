//
//  FirstViewController.swift
//  InnoMaps
//
//  Created by Nikolay Yushkevich on 14.06.16.
//  Copyright © 2016 Nikolay Yushkevich. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet var mapView: MKMapView!
    
    @IBOutlet var mapTypeControl: UISegmentedControl!
    
    @IBAction func mapTypeChanged(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            mapView.mapType = MKMapType.Standard
            break
        case 1:
            mapView.mapType = MKMapType.Hybrid
            break
        case 2:
            mapView.mapType = MKMapType.Satellite
            break
        default:
            break
        }
    }
    
    func tapped(sender: UITapGestureRecognizer) {
        let touchPoint = sender.locationInView(self.mapView)
        let coordinate = mapView.convertPoint(touchPoint, toCoordinateFromView: self.mapView)
        NSLog(String(coordinate.latitude) + String(coordinate.longitude))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let singleTap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(MapViewController.tapped(_:)))
        singleTap.numberOfTapsRequired = 1
        mapView.addGestureRecognizer(singleTap)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

