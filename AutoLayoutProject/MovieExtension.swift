//
//  MovieExtension.swift
//  AutoLayoutProject
//
//  Created by Jae Oh on 2023/08/24.
//

import UIKit

extension UIViewController {
    
    func buttonStyle< T : UIButton>(view: T , title: String) {
        
        view.setTitle(title, for: .normal)
        view.setTitleColor(UIColor.white, for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
    }
    
    func labelSetting< T : UILabel>(view: T, title: String) {
        view.text = title
        view.textColor = .white
        view.adjustsFontSizeToFitWidth = true
    }
    
    func buttonimage< T: UIButton >(view: T, style: String) {
        
        view.setImage(UIImage(systemName: style), for: .normal)
        view.tintColor = .white
        
    }
    
    func buttonCircleImage<T: UIButton >(view: T, image: String){
        
        view.setBackgroundImage(UIImage(named: image), for: .normal)
        //view.contentMode = .scaleToFill
             view.layer.cornerRadius = view.layer.frame.size.width / 2
        view.imageView!.layer.cornerRadius = view.imageView!.layer.frame.size.width / 2
    }
    
    
    
    
}

