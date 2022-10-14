//
//  S2_SecondView.swift
//  iOS 31th daunkim
//
//  Created by 김다운 on 2022/10/08.
//

// 1. 첫 번째 큰 네모를 만든다. 2. 두번째로, 큰 네모 하나 만들고 오른쪽 세 개 네모를 만든다. 


import UIKit

import SnapKit

final class SecondViewController: UIViewController {
    
    private let S2_SecondView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray3
        return view
        
        
    }()
    
    private let secondbox1: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray3
        return view
        
        
    }()
    
    private let secondbox2: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray3
        return view
        
        
    }()
    
    private let secondbox3: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray3
        return view
        
        
    }()
    
    private let secondbox4: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray3
        return view
        
        
    }()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        layout()
    }
    
    private func layout() {
        
        [S2_SecondView, secondbox1, secondbox2, secondbox3, secondbox4].forEach {
            view.addSubview($0)
        }
        
        S2_SecondView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(149)
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).offset(70)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).offset(-70)
            make.height.equalTo(153.39)
            
            secondbox1.snp.makeConstraints { make in
                make.top.equalTo(self.S2_SecondView.snp.bottom).offset(23)
                make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).offset(70)
                make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).offset(-190)
                make.height.equalTo(153.39)
            }
            
            secondbox2.snp.makeConstraints { make in
                make.top.equalTo(self.S2_SecondView.snp.bottom).offset(23.21)
                make.leading.equalTo(self.secondbox1.snp.trailing).offset(4.91)
                make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).offset(-70)
                make.height.equalTo(32.29)
                
            }
            
            secondbox2.snp.makeConstraints { make in
                make.top.equalTo(self.S2_SecondView.snp.bottom).offset(23.21)
                make.leading.equalTo(self.secondbox1.snp.trailing).offset(4.91)
                make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).offset(-70)
                make.height.equalTo(34.31)
                
            }
            
            secondbox3.snp.makeConstraints { make in
                make.top.equalTo(self.secondbox2.snp.bottom).offset(4.65)
                make.leading.equalTo(self.secondbox1.snp.trailing).offset(4.91)
                make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).offset(-70)
                make.height.equalTo(34.31)
                    
                
            }
            
            secondbox4.snp.makeConstraints { make in
                make.top.equalTo(self.secondbox3.snp.bottom).offset(5.05)
                make.leading.equalTo(self.secondbox1.snp.trailing).offset(4.91)
                make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).offset(-70)
                make.height.equalTo(76.7)
                    
                
            }
            
            
        }
    }
}
