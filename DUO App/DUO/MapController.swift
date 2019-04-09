//
//  ViewController.swift
//  iOSMapSearchKit
//
//  Created by issd on 21/03/2019.
//  Copyright © 2019 issd. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    
    let locationManager = CLLocationManager()
    var initialLocation = CLLocation(latitude: 51.44083, longitude: 5.47778)
    let searchRadius: CLLocationDistance = 1700
  
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func searchOnValueAction(_ sender: Any) {
        mapView.removeAnnotations(mapView.annotations)
        
        searchInMap()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestAlwaysAuthorization()
        if CLLocationManager.locationServicesEnabled()
        {
            
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        }
        
        mapView.delegate = self
        
        let coordinateRegion = MKCoordinateRegion.init(center: initialLocation.coordinate, latitudinalMeters: searchRadius * 2.0, longitudinalMeters: searchRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
        
        searchInMap()
        
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first{
            print(location.coordinate)
            
        }
    }
    func searchInMap() {
        // 1
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = segmentedControl.titleForSegment(at: segmentedControl.selectedSegmentIndex)
        // 2
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        request.region = MKCoordinateRegion(center: initialLocation.coordinate, span: span)
        // 3
        let search = MKLocalSearch(request: request)
        search.start(completionHandler: {(response, error) in
            
            for item in response!.mapItems {
                self.addPinToMapView(title: item.name, latitude: item.placemark.location!.coordinate.latitude, longitude: item.placemark.location!.coordinate.longitude)
            }
        })
    }
    func addPinToMapView(title: String?, latitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        if let title = title {
            let location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
            let annotation = MKPointAnnotation()
            annotation.coordinate = location
            annotation.title = title
            
            mapView.addAnnotation(annotation)
        }
    }
}


