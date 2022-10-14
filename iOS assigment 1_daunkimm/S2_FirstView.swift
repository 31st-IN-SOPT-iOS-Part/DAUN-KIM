//
//  S2_FirstView.swift
//  iOS 31th daunkim
//
//  Created by 김다운 on 2022/10/08.
//

// View1를 오토레이아웃으로 그리고 -> View2를 superview와 차이나는 걸로 그려보겠다.


import UIKit

import SnapKit

final class S2_FirstView: UIViewController {
    
    private let S2_FirstView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray3
        return view
    }()
    
    private let S2_SecondView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemIndigo
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        layout()
    }
}

extension S2_FirstView {
    
    private func layout() {
        [S2_FirstView, S2_SecondView].forEach {
            view.addSubview($0)
        }
        
        S2_FirstView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(275)
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).offset(62)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).offset(-62)
            make.height.equalTo(155)
            
        }
        
        S2_SecondView.snp.makeConstraints {
            $0.top.equalTo(self.S2_FirstView.snp.bottom).offset(96)
            $0.leading.equalTo(self.S2_FirstView)
            $0.width.equalTo(109)
            $0.height.equalTo(106)
            
        }
        
        
    }
}






