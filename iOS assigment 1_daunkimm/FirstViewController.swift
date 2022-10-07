//
//  FirstViewController.swift
//  iOS assigment 1_daunkimm
//
//  Created by 김다운 on 2022/10/07.
//

import UIKit

class FirstViewController: UIViewController {
    
    private let MainLabel: UILabel = {
        let label = UILabel(frame: CGRect(x:112, y:120, width:250, height:30))
        label.text = "카카오톡을 시작합니다"
        label.font = .boldSystemFont(ofSize: 20)
        return label
    }()
    
        private let SubLabel: UILabel = {
            let label = UILabel(frame: CGRect(x:50, y:160, width:300, height:50))
            label.text = "사용하던 카카오계정이 있다면\n이메일 또는 전화번호로 로그인해 주세요."
            label.font = .boldSystemFont(ofSize: 15)
            label.textColor = .gray
            label.numberOfLines = 2;
            label.textAlignment = .center
            return label
    }()
    
    
    private let answerTextField: UITextField = {
        let textField = UITextField(frame:CGRect(x:80, y:280, width:250, height:40))
        textField.backgroundColor = .white
        textField.font = .systemFont(ofSize: 15, weight: .medium)
        textField.placeholder = "이메일 또는 전화번호"
        return textField
        
        
    }()
    
    private let answerUnderline: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = .systemGray4
        return view
    }()

    
    private let answer2TextField: UITextField = {
        let textField = UITextField(frame:CGRect(x:80, y:330, width:250, height:40))
        textField.backgroundColor = .white
        textField.font = .systemFont(ofSize: 15, weight: .medium)
        textField.placeholder = "비밀번호"
        textField.isSecureTextEntry = true
        return textField
        
        
    }()
    
    
    @objc
    private lazy var loginButton: UIButton = {
        let button = UIButton(frame:CGRect(x:20, y:400, width:350, height: 42))
        button.setTitle("카카오계정 로그인", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray6
        button.addTarget(self, action:#selector(presentToThirdVC), for: .touchUpInside)
        return button
    }()
    
    private lazy var createButton: UIButton = {
        let button = UIButton(frame:CGRect(x:20, y:450, width:350, height: 42))
        button.setTitle("새로운 카카오계정 만들기", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray6
        button.addTarget(self, action:#selector(pushToSecondVC), for: .touchUpInside)
        return button
    }()
    
    private let findLabel: UILabel = {
        let label = UILabel(frame: CGRect(x:20, y:500, width:350, height:42))
        label.text = "카카오계정 또는 비밀번호 찾기"
        label.font = .boldSystemFont(ofSize: 15)
        label.textColor = .gray
        label.textAlignment = .center
        return label
    }()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let components: [Any] = [MainLabel, SubLabel, answerTextField, answer2TextField, loginButton, createButton, findLabel]
        components.forEach {
            view.addSubview($0 as! UIView)
        }

        
    }
    
    
    @objc private func pushToSecondVC() {
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    
    
    @objc
    private func touchuploginButton() {
        pushToSecondVC()
    }
        
    @objc
        private func presentToThirdVC() {
        let thirdVC = ThirdViewController()
            thirdVC.modalPresentationStyle = .fullScreen
            self.present(thirdVC, animated: true, completion: nil)
    }
        
       
//        presentToSecondVC()
        
   
    
    }



