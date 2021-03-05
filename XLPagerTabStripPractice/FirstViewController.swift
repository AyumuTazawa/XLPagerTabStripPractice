//
//  FirstViewController.swift
//  XLPagerTabStripPractice
//
//  Created by 田澤歩 on 2021/03/05.
//

import UIKit
import XLPagerTabStrip
import AnimatedGradientView

class FirstViewController: UIViewController, IndicatorInfoProvider {
    
    //ここがボタンのタイトルに利用されます
    var itemInfo: IndicatorInfo = "First"

    override func viewDidLoad() {
        super.viewDidLoad()

        let gradient = AnimatedGradientView(frame: view.bounds)
        gradient.autoAnimate = false
        gradient.colorStrings = [["#3224AE", "#FF66FF"]]
        gradient.type = .axial
        view.addSubview(gradient)
        
    }
    
    //必須
        func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
            return itemInfo
        }

}

