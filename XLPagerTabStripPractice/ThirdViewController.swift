//
//  ThirdViewController.swift
//  XLPagerTabStripPractice
//
//  Created by 田澤歩 on 2021/03/05.
//

import UIKit
import XLPagerTabStrip
import AnimatedGradientView
import NVActivityIndicatorView

class ThirdViewController: UIViewController, IndicatorInfoProvider {
    
    //ここがボタンのタイトルに利用されます
    var itemInfo: IndicatorInfo = "Third"
    private var activityIndicatorView: NVActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let animatedGradient = AnimatedGradientView(frame: view.bounds)
        animatedGradient.direction = .upRight
        animatedGradient.animationValues = [(colors: ["#2BC0E4", "#EAECC6"], .up, .axial),
                                            (colors: ["#833ab4", "#fd1d1d", "#fcb045"], .right, .axial),
                                            (colors: ["#003973", "#E5E5BE"], .down, .axial),
                                            (colors: ["#1E9600", "#FFF200", "#FF0000"], .left, .axial)]
        view.addSubview(animatedGradient)
        
        setupHud()
        activityIndicatorView.startAnimating()
        
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }
    
    func setupHud() {
        activityIndicatorView = NVActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 60, height: 60), type: NVActivityIndicatorType.ballBeat, color: UIColor.clear, padding: 0)
        activityIndicatorView.center = self.view.center
        view.addSubview(activityIndicatorView)
    }
    
}
