//
//  ThirdViewController.swift
//  XLPagerTabStripPractice
//
//  Created by 田澤歩 on 2021/03/05.
//

import UIKit
import XLPagerTabStrip
import AnimatedGradientView

class ThirdViewController: UIViewController, IndicatorInfoProvider {

    //ここがボタンのタイトルに利用されます
    var itemInfo: IndicatorInfo = "Third"
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        let animatedGradient = AnimatedGradientView(frame: view.bounds)
        animatedGradient.direction = .upRight
        animatedGradient.animationValues = [(colors: ["#2BC0E4", "#EAECC6"], .up, .axial),
        (colors: ["#833ab4", "#fd1d1d", "#fcb045"], .right, .axial),
        (colors: ["#003973", "#E5E5BE"], .down, .axial),
        (colors: ["#1E9600", "#FFF200", "#FF0000"], .left, .axial)]
        view.addSubview(animatedGradient)
    }
   
    //必須
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }

}
