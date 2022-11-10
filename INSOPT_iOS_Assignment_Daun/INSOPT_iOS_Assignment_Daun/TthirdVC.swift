//
//  S2_ThirdView.swift
//  iOS 31th daunkim
//
//  Created by 김다운 on 2022/10/08.
//

import UIKit

import SnapKit

// MARK: - ScrollLayoutViewController

final class ThirdVC: UIViewController {
    
    // MARK: - Lazy Components
    
    private lazy var containerView = UIScrollView()
    
    // MARK: - UI Components
    
    private let firstView = UIView()
    private let secondView = UIView()
    private let thirdView = UIView()
    
    // MARK: - LifeCycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        config()
        layout()
    }
}

// MARK: - Extensions

extension ThirdVC {
    
    // MARK: - Layout Helpers
    
    private func layout() {
        view.addSubview(containerView)
        [firstView, secondView, thirdView].forEach {
            containerView.addSubview($0)
        }
        
        containerView.snp.makeConstraints { make in
            make.edges.equalTo(self.view.safeAreaLayoutGuide)
        }
        
        firstView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide)
            make.height.equalTo(337)
        }
        
        secondView.snp.makeConstraints { make in
            make.top.equalTo(self.firstView.snp.bottom).offset(45)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide)
            make.height.equalTo(337)
        }
        
        thirdView.snp.makeConstraints { make in
            make.top.equalTo(self.secondView.snp.bottom).offset(45)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide)
            make.height.equalTo(337)
            /// 뽀인트!!!!!!
            make.bottom.equalToSuperview().offset(-45)
        }
    }
    
    // MARK: - General Helpers
    
    private func config() {
        firstView.backgroundColor = .systemGray3
        secondView.backgroundColor = .systemRed
        thirdView.backgroundColor = .systemPink
    }
}
