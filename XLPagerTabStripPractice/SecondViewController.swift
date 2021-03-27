//
//  SecondViewController.swift
//  XLPagerTabStripPractice
//
//  Created by 田澤歩 on 2021/03/05.
//

import UIKit
import XLPagerTabStrip
import AnimatedGradientView
import RSLoadingView
import AMPopTip
import DTGradientButton

class SecondViewController: UIViewController, IndicatorInfoProvider {
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var ThirdButton: UIButton!
    //ここがボタンのタイトルに利用されます
    var itemInfo: IndicatorInfo = "Scond"
    let loadingView = RSLoadingView(effectType: RSLoadingView.Effect.twins)
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let gradient = AnimatedGradientView(frame: view.bounds)
//        gradient.autoAnimate = false
//        gradient.colorStrings = [["#3224AE", "#FF66FF"]]
//        gradient.type = .conic
//        view.addSubview(gradient)
//        loadingView.mainColor = .cyan
//        loadingView.showOnKeyWindow()
        let colors = [UIColor.systemOrange, UIColor.systemPink]
        self.tapButton.setGradientBackgroundColors(colors, direction: .toRight, for: .normal)
        self.secondButton.setGradientBackgroundColors(colors, direction: .toRight, for: .normal)
        self.ThirdButton.layer.cornerRadius = 10.0
        //self.ThirdButton.setGradientBackgroundColors(colors, direction: .toRight, for: .normal)
        
        
        
    }
    
    //必須
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }
    
    @IBAction func tapButton(_ sender: Any) {
        let popTip = PopTip()
        popTip.actionAnimation = .bounce(16)
        popTip.bubbleColor = .cyan
        popTip.textColor = .gray
        popTip.show(text: "Hello", direction: .up, maxWidth: 200, in: view, from: self.tapButton.frame)
        let customView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
    }
}

