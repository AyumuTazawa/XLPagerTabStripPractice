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

class SecondViewController: UIViewController, IndicatorInfoProvider {
    
    //ここがボタンのタイトルに利用されます
    var itemInfo: IndicatorInfo = "Scond"
    let loadingView = RSLoadingView(effectType: RSLoadingView.Effect.twins)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradient = AnimatedGradientView(frame: view.bounds)
        gradient.autoAnimate = false
        gradient.colorStrings = [["#3224AE", "#FF66FF"]]
        gradient.type = .conic
        view.addSubview(gradient)
        loadingView.mainColor = .cyan
        loadingView.showOnKeyWindow()
    }
    
    //必須
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }
    
}

