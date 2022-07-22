//
//  ViewController.swift
//  Practice
//
//  Created by 변상우 on 2022/07/22.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .blue
        label.textAlignment = .center
        label.text = "메인화면"
        label.font = UIFont.boldSystemFont(ofSize: 70)
        return label
    }()
    
    let animationView: AnimationView = {
        let aniView = AnimationView(name: "112308-walking-ball")
        aniView.frame = CGRect(x:0, y:0, width: 400, height: 400)
        aniView.contentMode = .scaleAspectFill
        return aniView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center
        
        
        animationView.play {(finish) in
            print("animation is done")
            
            self.view.backgroundColor = .white
            self.animationView.removeFromSuperview() // 애니메이션 제거
            
            // 애니메이션 제거 후 메인화면 추가
            self.view.addSubview(self.titleLabel)
            
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        }
        
        
    }


}

