//
//  ViewController.swift
//  emotionalDiary
//
//  Created by 김재석 on 1/2/24.
//

import UIKit

class ViewController: UIViewController {
    
    // ImageView Connections
    @IBOutlet var smileImageView: UIImageView!
    @IBOutlet var happyImageView: UIImageView!
    @IBOutlet var loveImageView: UIImageView!
    
    @IBOutlet var angryImageView: UIImageView!
    @IBOutlet var sosoImageView: UIImageView!
    @IBOutlet var sleepyImageView: UIImageView!
    
    @IBOutlet var scaryImageView: UIImageView!
    @IBOutlet var frustratedImageView: UIImageView!
    @IBOutlet var sadImageView: UIImageView!
    
    // Label Connections
    @IBOutlet var smileLabel: UILabel!
    @IBOutlet var happyLabel: UILabel!
    @IBOutlet var loveLabel: UILabel!
    
    @IBOutlet var angryLabel: UILabel!
    @IBOutlet var sosoLabel: UILabel!
    @IBOutlet var sleepyLabel: UILabel!
    
    @IBOutlet var scaryLabel: UILabel!
    @IBOutlet var frustratedLabel: UILabel!
    @IBOutlet var sadLabel: UILabel!
    
    // count 변수
    var smileCount = UserDefaults.standard.integer(forKey: "smileCount")
    var happyCount = UserDefaults.standard.integer(forKey: "happyCount")
    var loveCount = UserDefaults.standard.integer(forKey: "loveCount")
    
    var angryCount = UserDefaults.standard.integer(forKey: "angryCount")
    var sosoCount = UserDefaults.standard.integer(forKey: "sosoCount")
    var sleepyCount = UserDefaults.standard.integer(forKey: "sleepyCount")
    
    var scaryCount = UserDefaults.standard.integer(forKey: "scaryCount")
    var frustratedCount = UserDefaults.standard.integer(forKey: "frustratedCount")
    var sadCount = UserDefaults.standard.integer(forKey: "sadCount")
    
    override func viewDidLoad() {
        let groupDict: [Int: [Any]] = [
            1: [smileImageView!, smileLabel!, "좋아해", smileCount],
            2: [happyImageView!, happyLabel!, "행복해", happyCount],
            3: [loveImageView!, loveLabel!, "사랑해", loveCount],
            4: [angryImageView!, angryLabel!, "화났어", angryCount],
            5: [sosoImageView!, sosoLabel!, "평범해", sosoCount],
            6: [sleepyImageView!, sleepyLabel!, "졸려", sleepyCount],
            7: [scaryImageView!, scaryLabel!, "무서워", scaryCount],
            8: [frustratedImageView!, frustratedLabel!, "짜증나", frustratedCount],
            9: [sadImageView!, sadLabel!, "슬퍼", sadCount],
        ]
        super.viewDidLoad()
        setNavigationItem()
        // 슬라임 이미지와 감정 띄우기
        for (key, value) in groupDict {
            designImageView(
                img: value[0] as! UIImageView,
                imgNum: key
            )
            setEmotionLabel(
                label: value[1] as! UILabel,
                emotion: value[2] as! String,
                count: value[3] as! Int
            )
        }
        
    }
    
    func setNavigationItem() {
        navigationItem.title = "감정 일기장"
    }
    
    // 슬라임 이미지 띄워주는 설정
    func designImageView(img: UIImageView, imgNum: Int) {
        let imgUrl = "slime\(imgNum)"
        img.image = UIImage(named: imgUrl)
        img.contentMode = .scaleAspectFit
    }
    
    // 감정 라벨 설정하는 함수
    func setEmotionLabel(label: UILabel, emotion: String, count: Int) {
        if count <= 99 {
            label.text = "\(emotion) \(count)"
        } else {
            label.text = "\(emotion) \(count)+"
        }
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 12)
        
    }
    
    @IBAction func smileOnTap(_ sender: UITapGestureRecognizer) {
        let newCntNum = UserDefaults.standard.integer(forKey: "smileCount") + 1
        UserDefaults.standard.set(newCntNum, forKey: "smileCount")
        setEmotionLabel(label: smileLabel, emotion: "좋아해", count: newCntNum)
    }
    
    @IBAction func happyOnTap(_ sender: UITapGestureRecognizer) {
        let newCntNum = UserDefaults.standard.integer(forKey: "happyCount") + 1
        UserDefaults.standard.set(newCntNum, forKey: "happyCount")
        setEmotionLabel(label: happyLabel, emotion: "행복해", count: newCntNum)
    }
    
    @IBAction func loveOnTap(_ sender: UITapGestureRecognizer) {
        let newCntNum = UserDefaults.standard.integer(forKey: "loveCount") + 1
        UserDefaults.standard.set(newCntNum, forKey: "loveCount")
        setEmotionLabel(label: loveLabel, emotion: "사랑해", count: newCntNum)
    }
    
    @IBAction func angryOnTap(_ sender: UITapGestureRecognizer) {
        let newCntNum = UserDefaults.standard.integer(forKey: "angryCount") + 1
        UserDefaults.standard.set(newCntNum, forKey: "angryCount")
        setEmotionLabel(label: angryLabel, emotion: "화났어", count: newCntNum)
    }
    
    @IBAction func sosoOnTap(_ sender: UITapGestureRecognizer) {
        let newCntNum = UserDefaults.standard.integer(forKey: "sosoCount") + 1
        UserDefaults.standard.set(newCntNum, forKey: "sosoCount")
        setEmotionLabel(label: sosoLabel, emotion: "평범해", count: newCntNum)
    }
    
    @IBAction func sleepyOnTap(_ sender: UITapGestureRecognizer) {
        let newCntNum = UserDefaults.standard.integer(forKey: "sleepyCount") + 1
        UserDefaults.standard.set(newCntNum, forKey: "sleepyCount")
        setEmotionLabel(label: sleepyLabel, emotion: "졸려", count: newCntNum)
    }
    
    @IBAction func scaryOnTap(_ sender: UITapGestureRecognizer) {
        let newCntNum = UserDefaults.standard.integer(forKey: "scaryCount") + 1
        UserDefaults.standard.set(newCntNum, forKey: "scaryCount")
        setEmotionLabel(label: scaryLabel, emotion: "무서워", count: newCntNum)
    }
    
    @IBAction func frustratedOnTap(_ sender: UITapGestureRecognizer) {
        let newCntNum = UserDefaults.standard.integer(forKey: "frustratedCount") + 1
        UserDefaults.standard.set(newCntNum, forKey: "frustratedCount")
        setEmotionLabel(label: frustratedLabel, emotion: "짜증나", count: newCntNum)
    }
    
    @IBAction func sadOnTap(_ sender: UITapGestureRecognizer) {
        let newCntNum = UserDefaults.standard.integer(forKey: "sadCount") + 1
        UserDefaults.standard.set(newCntNum, forKey: "sadCount")
        setEmotionLabel(label: sadLabel, emotion: "슬퍼", count: newCntNum)
    }
}

