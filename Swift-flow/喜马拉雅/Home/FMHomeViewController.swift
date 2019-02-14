//
//  FMHomeViewController.swift
//  Swift-flow
//
//  Created by 白蜡树 on 2019/2/12.
//  Copyright © 2019 白蜡树. All rights reserved.
//

import UIKit
import DNSPageView

class FMHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        let style = DNSPageStyle();
        style.isTitleViewScrollEnabled = false
        style.isTitleScaleEnabled = true;
        style.isShowBottomLine = true
        style.titleSelectedColor = UIColor.black
        style.titleColor = UIColor.gray
        style.bottomLineColor = DominantColor
        style.bottomLineHeight = 2
        
        let titles = ["推荐","分类","VIP","直播","广播"]
        let vc:[UIViewController] = [HomeRecommendController(),HomeClassifyController(),HomeVIPController(),HomeLiveController(),HomeBroadcastController()]
        for v in vc {
            self.addChildViewController(v)
        }
        let pageView = DNSPageView(frame: CGRect(x: 0, y: navigationBarHeight, width: YYScreenWidth, height: YYScreenHeigth-navigationBarHeight-44), style: style, titles: titles, childViewControllers: vc)
        pageView.backgroundColor = .green
        view.addSubview(pageView)
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
