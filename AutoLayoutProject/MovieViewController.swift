//
//  MovieViewController.swift
//  AutoLayoutProject
//
//  Created by Jae Oh on 2023/08/24.
//

import UIKit
import SnapKit
class MovieViewController: UIViewController {
   let mainView = UIView()
    
    let backgroundImage = UIImageView()
    
    let topView = UIView()
  let logoButton = UIButton()
    let tvButton = UIButton()
    let movieButton = UIButton()
    let mycontentsButton = UIButton()
    
    let bottomView = UIView()
    let leftMovieButton = UIButton()
    let middleMovieButton = UIButton()
    let rightMoviewButton = UIButton()
    let previewLebel = UILabel()

    let playButton = UIButton()
    let jjimButton = UIButton()
    let jjimLabel = UILabel()
    let infoButton = UIButton()
    let infoLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        
        topviewSetup()
        bottomViewSetup()
    }
    func topviewSetup() {
    
       
        
        backgroundImage.image = UIImage(named: "어벤져스엔드게임")
        backgroundImage.contentMode = .scaleAspectFill
        view.addSubview(backgroundImage)
        backgroundImage.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }
        
        
        view.addSubview(mainView)
        mainView.backgroundColor = .black
        mainView.layer.opacity = 0.4
        mainView.snp.makeConstraints { make in
            make.size.equalTo(backgroundImage)
        }
       
       
        view.addSubview(topView)
        topView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.13)
        }
        
    
        buttonStyle(view: logoButton, title: "N")
        view.addSubview(logoButton)
        logoButton.snp.makeConstraints { make in
            make.size.equalTo(60)
            make.leading.equalTo(topView)
            make.bottom.equalTo(topView)
        }
        
     
        buttonStyle(view: tvButton, title: "TV프로그램")
        view.addSubview(tvButton)
        tvButton.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.leading.equalTo(logoButton.snp.trailing).offset(10)
            make.bottom.equalTo(topView)
        }
        
     
        buttonStyle(view: movieButton, title: "영화")
        view.addSubview(movieButton)
        movieButton.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.leading.equalTo(tvButton.snp.trailing).offset(10)
            make.bottom.equalTo(topView)
        }
      
        
        buttonStyle(view: mycontentsButton, title: "내가찜한 콘텐츠")
        view.addSubview(mycontentsButton)
        mycontentsButton.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.leading.equalTo(movieButton.snp.trailing).offset(10)
            make.trailing.equalTo(topView).inset(20)
            make.bottom.equalTo(topView)
        }
        
        
        
        
        
    }
    
    func bottomViewSetup() {
        
        bottomView.backgroundColor = .black
        bottomView.layer.opacity = 0.5
        view.addSubview(bottomView)
        bottomView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.2)
        }
        
    
        view.addSubview(leftMovieButton)
        buttonCircleImage(view: leftMovieButton, image: "2")
        leftMovieButton.snp.makeConstraints { make in
            make.width.equalTo(bottomView).multipliedBy(0.3)
 
            make.leading.equalTo(bottomView).inset(10)
            make.bottom.equalTo(bottomView).inset(20)
            make.top.equalTo(bottomView).inset(20)
          
        }
        
        view.addSubview(middleMovieButton)
        middleMovieButton.backgroundColor = .white
        middleMovieButton.snp.makeConstraints { make in
            make.size.equalTo(100)
            make.center.equalTo(bottomView)
        }
        buttonCircleImage(view: middleMovieButton, image: "신과함께죄와벌")
       
        
        buttonCircleImage(view: rightMoviewButton, image: "아바타")
        view.addSubview(rightMoviewButton)
        rightMoviewButton.snp.makeConstraints { make in
            make.width.equalTo(bottomView).multipliedBy(0.3)
            make.trailing.equalTo(bottomView).inset(10)
            make.bottom.equalTo(bottomView).inset(20)
            make.top.equalTo(bottomView).inset(20)
          
        }
        
    
        previewLebel.text = "미리보기"
        previewLebel.font = UIFont.boldSystemFont(ofSize: 20)
        previewLebel.textColor = .white
        previewLebel.adjustsFontSizeToFitWidth = true
        view.addSubview(previewLebel)
        previewLebel.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.bottom.equalTo(bottomView.snp.top)
            make.height.equalTo(40)
        }
        
        
        playButton.setTitleColor(UIColor.black, for: .normal)
        playButton.backgroundColor = .white
        playButton.setTitle("재생", for: .normal)
        playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        playButton.tintColor = .black
        playButton.layer.cornerRadius = 4
        view.addSubview(playButton)
        playButton.snp.makeConstraints { make in
            make.height.equalTo(35)
            make.width.equalTo(120)
            make.bottom.equalTo(previewLebel.snp.top).offset(-30)
            make.centerX.equalToSuperview()
        }
        
        
        
      
        view.addSubview(jjimLabel)
        labelSetting(view: jjimLabel, title: "내가 찜한 콘텐츠")
        jjimLabel.snp.makeConstraints { make in
            make.bottom.equalTo(previewLebel.snp.top).offset(-30)
            make.trailing.equalTo(playButton.snp.leading).offset(-20)
            make.leading.greaterThanOrEqualTo(view).inset(10)
        }
        
       
        buttonimage(view: jjimButton, style: "checkmark")
        view.addSubview(jjimButton)
        jjimButton.snp.makeConstraints { make in
            make.centerX.equalTo(jjimLabel)
            make.bottom.equalTo(jjimLabel.snp.top)
            make.width.equalTo(jjimLabel)
            make.height.equalTo(30)
        }
        
        
        
      
        buttonimage(view: infoButton, style: "info.circle")
        view.addSubview(infoButton)
        infoButton.snp.makeConstraints { make in
            
            make.size.equalTo(80)
            make.bottom.equalTo(previewLebel.snp.top).offset(-30)
            
            make.leading.equalTo(playButton.snp.trailing).offset(50)
            make.trailing.lessThanOrEqualTo(view).inset(10)
            
        }
        
        
        
    
        view.addSubview(infoLabel)
        labelSetting(view: infoLabel, title: "정보")
        infoLabel.snp.makeConstraints { make in
            
            make.bottom.equalTo(infoButton.snp.bottom)
            make.leading.greaterThanOrEqualTo(infoButton.snp.leading).inset(4)
            make.trailing.lessThanOrEqualTo(infoButton.snp.trailing).inset(4)
            make.centerX.equalTo(infoButton)
        }
        
        
        
       
        
        
    }
    
    
    
    

}
