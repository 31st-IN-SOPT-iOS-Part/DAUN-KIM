//
//  ViewController.swift
//  iOS assigment 1_daunkimm
//
//  Created by 김다운 on 2022/10/07.
//

import UIKit

class ViewController: UIViewController {
    
    private let testLabel: UILabel = {
            let label = UILabel(frame: CGRect(x: 100, y: 400, width: 300, height: 100))
            label.text = "카카오톡을 시작합니다"
            label.font = .boldSystemFont(ofSize: 70)
            return label
        }()
 
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(testLabel)
      
    }
}


