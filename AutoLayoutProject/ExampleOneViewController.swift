//
//  ExampleOneViewController.swift
//  AutoLayoutProject
//
//  Created by Jae Oh on 2023/08/22.
//

import UIKit
import SnapKit
class ExampleOneViewController: UIViewController {
    
    let exampleOneTopImage = {
        
        let view = UIImageView()
        view.backgroundColor = .systemGray
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    
    let titleTextField = {
        let view = UITextField()
        view.borderStyle = .none
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        view.placeholder = "제목을 입력해 주세요."
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 20)
        return view
    }()
    
    let dateTextField = {
        let view = UITextField()
        view.borderStyle = .none
        view.layer.borderColor = UIColor.black.cgColor
        view.placeholder = "날짜를 입력해 주세요."
        view.layer.borderWidth = 1
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 20)
        return view
    }()
    
    let emptyView = {
        let view = UIImageView()
        view.backgroundColor = .white
        view.layer.borderWidth = 4
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(exampleOneTopImage)
        view.addSubview(titleTextField)
        view.addSubview(dateTextField)
        view.addSubview(emptyView)
        setupConstraints()
        
    }
    
    func setupConstraints() {
        
        exampleOneTopImage.snp.makeConstraints { make in
            make.top.horizontalEdges.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(view).multipliedBy(0.3)
        }
        
        
        titleTextField.snp.makeConstraints { make in
            make.top.equalTo(exampleOneTopImage.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(40)
        }
        
        
        dateTextField.snp.makeConstraints { make in
            make.top.equalTo(titleTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(40)
        }
        
        emptyView.snp.makeConstraints { make in
            make.top.equalTo(dateTextField.snp.bottom).offset(20)
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
            
            
        }
    }
}

