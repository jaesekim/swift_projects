//
//  ViewController.swift
//  BMICalculator
//
//  Created by 김재석 on 1/3/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var explainLabel: UILabel!
    
    @IBOutlet var designImageView: UIImageView!
    
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    
    @IBOutlet var heightTextField: UITextField!
    @IBOutlet var weightTextField: UITextField!
    @IBOutlet var randomLabel: UILabel!
    
    @IBOutlet var confirmButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designCollections()
    }
        
    // bmi를 계산하고 결과를 보여주는 함수
    func bmiFormula(weight: Double, height: Double) {
        let bmi = weight / (height * height)
        switch bmi {
        case ..<18.5:
            print("저체중")
        case 18.5..<23:
            print("정상")
        case 23..<25:
            print("과체중")
        case 25..<30:
            print("경도 비만")
        case 30..<35:
            print("중정도 비만")
        case 35...:
            print("고도 비만")
        default:
            print("입력한 값이 올바르지 않습니다.")
        }
    }
    // tap gesture 키보드 내리기
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    // 전반적인 디자인 한 번에 박아넣은 함수
    func designCollections() {
        // title
        titleLabel.text = "BMI Calculator"
        titleLabel.font = .boldSystemFont(ofSize: 24)
        
        // explaination
        explainLabel.text =
        "당신의 BMI지수를\n알려드릴게요"
        explainLabel.numberOfLines = 2
        explainLabel.font = .systemFont(ofSize: 16)
        
        // image
        designImageView.image = UIImage(named: "image")
        
        // label design
        heightLabel.text = "키를 입력해 주세요(m)"
        heightLabel.font = .boldSystemFont(ofSize: 12)
        weightLabel.text = "몸무게를 입력해 주세요(kg)"
        weightLabel.font = .boldSystemFont(ofSize: 12)
        randomLabel.text = "랜덤으로 BMI 계산하기"
        randomLabel.font = .systemFont(ofSize: 12)
        randomLabel.textColor = .red
        randomLabel.textAlignment = .right
        
        // textfield
        heightTextField.layer.cornerRadius = 10
        heightTextField.layer.borderColor = UIColor.gray.cgColor
        heightTextField.layer.borderWidth = 1.5
        weightTextField.layer.cornerRadius = 10
        weightTextField.layer.borderColor = UIColor.gray.cgColor
        weightTextField.layer.borderWidth = 1.5
        
        // button design
        confirmButton.setTitle("결과 확인", for: .normal)
        confirmButton.setTitleColor(.white, for: .normal)
        confirmButton.backgroundColor = .purple
        confirmButton.layer.cornerRadius = 8
    }
}

