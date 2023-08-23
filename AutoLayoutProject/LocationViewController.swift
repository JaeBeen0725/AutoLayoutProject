//
//  LocationViewController.swift
//  AutoLayoutProject
//
//  Created by Jae Oh on 2023/08/24.
//

import UIKit
import CoreLocation
import MapKit
import SnapKit




class LocationViewController: UIViewController {
    
    let locationManager = CLLocationManager()
    let mapView = MKMapView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkDeviceLocationAuthorization()
        mapviewSetting()
        locationManager.delegate = self
        
        locationManager.requestWhenInUseAuthorization()
      
        
      // 37.519267, 126.889819
        
        let center = CLLocationCoordinate2D(latitude: 37.519267, longitude: 126.889819)
        setRegionAndAnnotation(center: center)
    }
    
    
    
    func mapviewSetting() {
        view.addSubview(mapView)
        mapView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(20)
        }
        
    }
    
    func setRegionAndAnnotation(center: CLLocationCoordinate2D) {
        let center = CLLocationCoordinate2D(latitude: 37.519267, longitude: 126.889819)
        
        let region = MKCoordinateRegion(center: center, latitudinalMeters: 100, longitudinalMeters: 100)
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.title = "내위치"
        annotation.coordinate = center
        
        mapView.addAnnotation(annotation)
        
        
    }
    
    func checkDeviceLocationAuthorization() {
        
        DispatchQueue.global().async {
            
            if CLLocationManager.locationServicesEnabled() {
                
                let authorization: CLAuthorizationStatus
                
                if #available(iOS 14.0, *) {
                    authorization = self.locationManager.authorizationStatus
                } else {
                    authorization = CLLocationManager.authorizationStatus()
                }
                
                print(authorization)
                DispatchQueue.main.async {
                    self.checkCurrentLocationAuthorization(status: authorization)
                }
            } else {
                print("잘못된 위치 서비스")
            }
            
        }
        
    }
    
    
    
    
    func checkCurrentLocationAuthorization(status: CLAuthorizationStatus) {
        print("check", status)
        
        switch status {
        case .notDetermined:
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("restricted")
            
        case .denied:
            print("denied")
            
            showLocationSettingAlert()
        case .authorizedAlways:
            print("author")
        case .authorizedWhenInUse:
            print("authotized")
            
            locationManager.startUpdatingLocation()
            
        case .authorized:
            print("authorized")
        @unknown default:
            print("default")
        }
    }
    
    
    
    
    
}


extension LocationViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if let coordinate = locations.last?.coordinate {
            //print(coordinate)
            
            setRegionAndAnnotation(center: coordinate)
        }
        locationManager.stopUpdatingLocation()
    }
    
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("ERROR", error)
        
    }
    
    
    
    
}


extension LocationViewController {
    
    func showLocationSettingAlert() {
        
        let alert = UIAlertController(title: "위치 정보 이용", message: "위치 서비스 이용불가함", preferredStyle: .alert)
        
        let goSetting = UIAlertAction(title: "설정으로 이동", style: .default) { _ in
            if let appSetting = URL(string: UIApplication.openSettingsURLString) {
                UIApplication.shared.open(appSetting)
            }
            
        }
        
        let cancle = UIAlertAction(title: "취소", style: .cancel)
        
        alert.addAction(goSetting)
        alert.addAction(cancle)
        present(alert, animated: true)
        
    }
    
}

