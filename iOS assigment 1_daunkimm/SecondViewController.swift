//
//  SecondViewController.swift
//  iOS assigment 1_daunkimm
//
//  Created by 김다운 on 2022/10/07.
//

import UIKit

class SecondViewController: UIViewController {
    
    private let startLabel: UILabel = {
        let label = UILabel(frame: CGRect(x:112, y:120, width:250, height:30))
        label.text = "카카오톡을 시작합니다"
        label.font = .boldSystemFont(ofSize: 20)
        return label
    }()
  
    private let answerTextField: UITextField = {
        let textField = UITextField(frame:CGRect(x:80, y:280, width:250, height:40))
        textField.backgroundColor = .white
        textField.font = .systemFont(ofSize: 15, weight: .medium)
        textField.placeholder = "이메일 또는 전화번호"
        return textField
        
        
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField(frame:CGRect(x:80, y:330, width:250, height:40))
        textField.backgroundColor = .white
        textField.font = .systemFont(ofSize: 15, weight: .medium)
        textField.placeholder = "비밀번호"
        textField.isSecureTextEntry = true
        return textField
        
        
    }()

    private let passwordidTextField: UITextField = {
        let textField = UITextField(frame:CGRect(x:80, y:380, width:250, height:40))
        textField.backgroundColor = .white
        textField.font = .systemFont(ofSize: 15, weight: .medium)
        textField.placeholder = "비밀번호 확인"
        textField.isSecureTextEntry = true
        return textField
        
        
    }()
    
    private let createButton: UIButton = {
        let button = UIButton(frame:CGRect(x:20, y:450, width:350, height: 42))
        button.setTitle("새로운 카카오계정 만들기", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray6
        button.addTarget(SecondViewController.self, action:#selector(presentToThirdVC), for: .touchUpInside)
        return button
    }()
    
    
    
    
    var result: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let components: [Any] = [startLabel, answerTextField, passwordTextField, passwordidTextField, createButton ]
        components.forEach{
            view.addSubview($0 as! UIView)
        }
    }
    
    @objc
    private func touchupBackButton(){
        if self.navigationController == nil {
            self.dismiss(animated: true, completion: nil)
        }
        
        else {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    @objc
        private func presentToThirdVC() {
        let thirdVC = ThirdViewController()
            thirdVC.modalPresentationStyle = .fullScreen
            self.present(thirdVC, animated: true, completion: nil)
    }
    

    
}
