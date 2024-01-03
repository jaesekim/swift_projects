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
        confirmButton.addTarget(self, action: #selector(confirmOnTap), for: .touchUpInside)
    }
    
    // return 누르면 저장되고 키보드 내리기
    @IBAction func returnHeightTextField(_ sender: UITextField) {
    }
    @IBAction func returnWeightTextField(_ sender: UITextField) {
    }
    
    // alert
    @objc func confirmOnTap() {
        let alert = UIAlertController(title: "나의 BMI", message: "\(bmiFormula(weight: weightTextField.text!, height: heightTextField.text!))", preferredStyle: .alert)
        
        let firstButton = UIAlertAction(title: "확인", style: .cancel)
        
        alert.addAction(firstButton)
        present(alert, animated: true)
    }
        
    // bmi를 계산하고 결과를 보여주는 함수
    func bmiFormula(weight: String, height: String) -> String {
        var doubleWeight = Double(weight)
        var doubleHeight = Double(height)
        guard let doubleHeight, let doubleWeight else {
            return "유효한 값이 아닙니다"
        }
        if doubleHeight == 0 {
            return "유효한 값이 아닙니다"
        }
        let bmi = doubleWeight / (doubleHeight * doubleHeight)
        switch bmi {
        case ..<18.5:
            return "저체중"
        case 18.5..<23:
            return "정상"
        case 23..<25:
            return "과체중"
        case 25..<30:
            return "경도 비만"
        case 30..<35:
            return "중정도 비만"
        case 35...:
            return "고도 비만"
        default:
            return "올바른 값을 입력하세요"
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
        weightTextField.isSecureTextEntry = true
        
        // button design
        confirmButton.setTitle("결과 확인", for: .normal)
        confirmButton.setTitleColor(.white, for: .normal)
        confirmButton.backgroundColor = .purple
        confirmButton.layer.cornerRadius = 8
    }
}

