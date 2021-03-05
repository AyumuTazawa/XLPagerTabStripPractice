//
//  SecondViewController.swift
//  XLPagerTabStripPractice
//
//  Created by 田澤歩 on 2021/03/05.
//

import UIKit
import XLPagerTabStrip
import AnimatedGradientView

class SecondViewController: UIViewController, IndicatorInfoProvider {
    
    //ここがボタンのタイトルに利用されます
    var itemInfo: IndicatorInfo = "Scond"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradient = AnimatedGradientView(frame: view.bounds)
        gradient.autoAnimate = false
        gradient.colorStrings = [["#3224AE", "#FF66FF"]]
        gradient.type = .conic
        view.addSubview(gradient)
    }
    
    //必須
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }
    
}

