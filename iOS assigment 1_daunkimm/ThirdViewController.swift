//
//  ThirdViewController.swift
//  iOS assigment 1_daunkimm
//
//  Created by 김다운 on 2022/10/07.
//

import UIKit

class ThirdViewController: UIViewController {
    
    private let welcomeLabel: UILabel = {
        let label = UILabel(frame: CGRect(x:55, y:250, width:300, height:50))
        label.text = "OOO님 \n 환영합니다"
        label.font = .boldSystemFont(ofSize: 20)
        label.numberOfLines = 2;
        label.textAlignment = .center
        return label
    }()
    
    
    private var createButton: UIButton = {
        let button = UIButton(frame:CGRect(x:20, y:450, width:350, height: 42))
        button.setTitle("확인", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .yellow
        button.addTarget(ThirdViewController.self, action:#selector(touchupcreateButton), for: .touchUpInside)
        return button
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let components: [Any] = [welcomeLabel, createButton]
        components.forEach {
            view.addSubview($0 as! UIView)
        }
    }
    
    @objc
    private func touchupcreateButton() {
        if self.navigationController == nil {
            self.dismiss(animated:true, completion: nil)
        }
        else {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
}

