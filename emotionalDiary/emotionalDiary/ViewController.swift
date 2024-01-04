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
    var smileCount = 0
    var happyCount = 0
    var loveCount = 0
    
    var angryCount = 0
    var sosoCount = 0
    var sleepyCount = 0
    
    var scaryCount = 0
    var frustratedCount = 0
    var sadCount = 0
    
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
        smileCount += 1
        setEmotionLabel(label: smileLabel, emotion: "좋아해", count: smileCount)
    }
    
    @IBAction func happyOnTap(_ sender: UITapGestureRecognizer) {
        happyCount += 1
        setEmotionLabel(label: happyLabel, emotion: "행복해", count: happyCount)
    }
    
    @IBAction func loveOnTap(_ sender: UITapGestureRecognizer) {
        loveCount += 1
        setEmotionLabel(label: loveLabel, emotion: "사랑해", count: loveCount)
    }
    
    @IBAction func angryOnTap(_ sender: UITapGestureRecognizer) {
        angryCount += 1
        setEmotionLabel(label: angryLabel, emotion: "화났어", count: angryCount)
    }
    
    @IBAction func sosoOnTap(_ sender: UITapGestureRecognizer) {
        sosoCount += 1
        setEmotionLabel(label: sosoLabel, emotion: "평범해", count: sosoCount)
    }
    
    @IBAction func sleepyOnTap(_ sender: UITapGestureRecognizer) {
        sleepyCount += 1
        setEmotionLabel(label: sleepyLabel, emotion: "졸려", count: sleepyCount)
    }
    
    @IBAction func scaryOnTap(_ sender: UITapGestureRecognizer) {
        scaryCount += 1
        setEmotionLabel(label: scaryLabel, emotion: "무서워", count: scaryCount)
    }
    
    @IBAction func frustratedOnTap(_ sender: UITapGestureRecognizer) {
        frustratedCount += 1
        setEmotionLabel(label: frustratedLabel, emotion: "짜증나", count: frustratedCount)
    }
    
    @IBAction func sadOnTap(_ sender: UITapGestureRecognizer) {
        sadCount += 1
        setEmotionLabel(label: sadLabel, emotion: "슬퍼", count: sadCount)
    }
}

