//
//  ExampleTwoViewController.swift
//  AutoLayoutProject
//
//  Created by Jae Oh on 2023/08/23.
//

import UIKit
import SnapKit
class ExampleTwoViewController: UIViewController{
    let mainView = UIView()
    let exampleTwoTopView = UIView()
    let exampleTwoBottomView = UIView()
    
    let viewImage = {
        let view = UIImageView()
        
        view.image = UIImage(named:"다운로드")
        view.contentMode = .scaleAspectFill
        
            view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let etExiteButton = {
      
        let view = UIButton()
        view.setImage(UIImage(systemName: "xmark"), for: .normal)
        view.tintColor = .white
        return view
    }()
    
    let etSettingButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "gearshape"), for: .normal)
        view.tintColor = .white
        return view
    }()
    
    
    let etRemittanceButton = {

        let view = UIButton()
        view.setImage(UIImage(systemName: "checkerboard.rectangle"), for: .normal)
        view.tintColor = .white
        return view

    }()

    let etGiftButton = {

        let view = UIButton()
        view.setImage(UIImage(systemName: "gift"), for: .normal)
        view.tintColor = .white
        return view

    }()
    
    
    let etProfileButton = {
        
        let view = UIButton()
        view.setImage(UIImage(systemName: "pencil"), for: .normal)
        view.tintColor = .white

        return view
        
    }()
    
    let etProfileButtonName = {
        
        let view = UILabel()
        view.text = "프로필 변경"
        view.textColor = .white
        view.sizeToFit()
        return view
    }()
    
    
    let etKakaoStoryButton = {
        
        let view = UIButton()
        view.setImage(UIImage(systemName: "quote.closing"), for: .normal)
        view.tintColor = .white
  
      
        return view
        
    }()
    
    let etKakaoStoryButtonName = {
        
        let view = UILabel()
        view.text = "카카오스토리"
        view.textColor = .white
        view.sizeToFit()
        return view
    }()
    
    
    let etChettingButton = {
        
        let view = UIButton()
        view.setImage(UIImage(systemName: "message.fill"), for: .normal)
        view.tintColor = .white
        return view
        
    }()
    
    let etChettingButtonName = {
        
        let view = UILabel()
        view.text = "나와의 채팅"
        view.textColor = .white
        view.sizeToFit()
        return view
    }()
    
    let etStatusMessage = {
        let view = UILabel()
        view.textColor = .white
        view.text = "돈많이 벌고싶다"
        
        view.textAlignment = .center
        return view
    }()
    
    let etName = {
        let view = UILabel()
        view.textColor = .white
        view.text = "오재빈"
        view.textAlignment = .center
        return view
    }()
    
    let proFileImage = {
        
        let view = UIImageView()
        view.image = UIImage(named: "춘식이")
        view.layer.cornerRadius = 50
        view.clipsToBounds = true
        view.contentMode = .scaleAspectFit
        
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(mainView)
        mainView.snp.makeConstraints { make in
            make.top.equalTo(view)
            make.bottom.equalTo(view)
            make.leading.equalTo(view)
            make.trailing.equalTo(view)
            
        }
        
        topviewSetupConstraints()

        bottoViewSetupConstraints()
        statusSetupConstraints()
    }
   
    func topviewSetupConstraints() {
        
       
        
        view.addSubview(viewImage)
        viewImage.snp.makeConstraints { make in
            make.top.equalTo(mainView)
            make.bottom.equalTo(mainView)
            make.leading.equalTo(mainView)
            make.trailing.equalTo(mainView)
        }
        
   
        view.addSubview(exampleTwoTopView)
        exampleTwoTopView.snp.makeConstraints { make in
            make.top.horizontalEdges.equalTo(mainView)
            make.height.equalTo(mainView).multipliedBy(0.12)
            
        }
        
        view.addSubview(etExiteButton)
  
        etExiteButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(50)
            make.leading.equalTo(exampleTwoTopView)
            make.bottom.equalTo(exampleTwoTopView)
        }
        
        view.addSubview(etSettingButton)
    
        etSettingButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(50)
            make.trailing.equalTo(exampleTwoTopView)
            make.bottom.equalTo(exampleTwoTopView)
        }
        

        view.addSubview(etRemittanceButton)
     
        etRemittanceButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(50)
            make.trailing.equalTo(etSettingButton.snp.leading).inset(-10)
            make.bottom.equalTo(exampleTwoTopView)
        }
        
        view.addSubview(etGiftButton)
     
        etGiftButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(50)
            make.trailing.equalTo(etRemittanceButton.snp.leading).inset(-10)
            make.bottom.equalTo(exampleTwoTopView)
        }
        
        
    }
    
    
    func bottoViewSetupConstraints() {
        
      
        view.addSubview(exampleTwoBottomView)
        exampleTwoBottomView.snp.makeConstraints { make in
            make.bottom.horizontalEdges.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(mainView).multipliedBy(0.15)
            
        }
        
        view.addSubview(etProfileButton)

        etProfileButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.center.equalTo(exampleTwoBottomView)
    
        }
        
        view.addSubview(etProfileButtonName)
     
        etProfileButtonName.snp.makeConstraints { make in

            make.centerX.equalTo(exampleTwoBottomView)
            make.centerY.equalTo(exampleTwoBottomView).offset(30)
         
         
          
        }
        
        etKakaoStoryButton.backgroundColor = .brown
        view.addSubview(etKakaoStoryButton)
   
        etKakaoStoryButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.leading.equalTo(etProfileButton.snp.trailing).offset(20)
            make.centerY.equalTo(exampleTwoBottomView)
        }
        
        etKakaoStoryButtonName.backgroundColor = .red
        view.addSubview(etKakaoStoryButtonName)
        etKakaoStoryButtonName.snp.makeConstraints { make in

            make.centerX.equalTo(etKakaoStoryButton)
            make.top.equalTo(etKakaoStoryButton.snp.bottom).offset(0)
//            make.centerX.equalTo(exampleTwoBottomView).offset(100)
//            make.centerY.equalTo(exampleTwoBottomView).offset(30)
         
          
        }
        
        view.addSubview(etChettingButton)
      
        etChettingButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.trailing.equalTo(etProfileButton.snp.leading).offset(-20)
            make.centerY.equalTo(exampleTwoBottomView)
        }

        view.addSubview(etChettingButtonName)
        etChettingButtonName.snp.makeConstraints { make in

            make.centerX.equalTo(exampleTwoBottomView).offset(-100)
            make.centerY.equalTo(exampleTwoBottomView).offset(30)
         
          
        }
        
    }

    func statusSetupConstraints() {
        
        view.addSubview(etStatusMessage)
        etStatusMessage.backgroundColor = .lightGray
        etStatusMessage.snp.makeConstraints { make in
          
            make.height.equalTo(30)
            make.trailing.lessThanOrEqualTo(-20)
            make.leading.greaterThanOrEqualTo(20)
            make.centerX.equalTo(mainView)
            make.bottom.equalTo(exampleTwoBottomView.snp.top).offset(-20)

        }
        
        view.addSubview(etName)
        etName.backgroundColor = .blue
        etName.snp.makeConstraints { make in

            make.height.equalTo(50)
            make.trailing.lessThanOrEqualTo(-20)
            make.leading.greaterThanOrEqualTo(20)
            make.centerX.equalTo(mainView)
            make.bottom.equalTo(etStatusMessage.snp.top).offset(-10)
            //make.horizontalEdges.equalTo(view)
        }
        
        
        view.addSubview(proFileImage)

        proFileImage.snp.makeConstraints { make in
            make.size.equalTo(150)
            make.centerX.equalTo(mainView)
            make.bottom.equalTo(etName.snp.top).offset(-20)

        }
        
    }
    
}
