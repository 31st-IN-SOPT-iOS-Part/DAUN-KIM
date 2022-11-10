//
//  firstVC.swift
//  iOS 31th daunkim
//
//  Created by 김다운 on 2022/10/14.
//

import UIKit
import SnapKit
import Then

final class firstVC: UIViewController {
    
    private let firstView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray3
        return view
    }()
    
    private let secondView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray3
        return view
    }()
    
    private let friendLabel = UILabel().then {
        $0.text = "친구"
        $0.textColor = .black
        $0.font = .boldSystemFont(ofSize: 21)
    }
    
    private lazy var settingButton = UIButton().then {
        $0.setBackgroundImage(UIImage(named: "settings 1"), for: .normal)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        layout()
    }
    
}


extension firstVC {
    
    private func layout() {
        view.backgroundColor = .white
        [firstView, secondView].forEach {
            view.addSubview($0)
        }
        
        [friendLabel].forEach {firstView.addSubview($0)
        }
        
        firstView.snp.makeConstraints {make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(41)
            make.height.equalTo(52)
        }
        
        secondView.snp.makeConstraints {make in
            make.top.equalTo(self.firstView.snp.bottom).offset(15)
            make.leading.equalTo(self.view.snp.leading).offset(14)
            make.trailing.equalTo(self.view.snp.trailing).offset(-302)
            make.height.equalTo(58)
    
        }
        
      
        
    }
}


