//
//  FMRecommendHeaderView.swift
//  Swift-flow
//
//  Created by 白蜡树 on 2019/2/13.
//  Copyright © 2019 白蜡树. All rights reserved.
//

import UIKit

typealias HeaderMoreBtnClick = () -> Void

class FMRecommendHeaderView: UICollectionReusableView {
    
    var headerMoreBtnClick : HeaderMoreBtnClick?
    
    private var titleLab: UILabel = {
        let lab = UILabel()
        lab.font = UIFont.systemFont(ofSize: 20)
        return lab
    }()
    
    private var subLab: UILabel = {
        let lab = UILabel()
        lab.font = UIFont.systemFont(ofSize: 15)
        lab.textColor = .lightGray
        lab.textAlignment = NSTextAlignment.center
        return lab
    }()
    
    private var moreBtn: UIButton = {
        let btn = UIButton.init(type: UIButtonType.custom)
        btn.setTitle("更多", for: UIControlState.normal)
        btn.setTitleColor(.gray, for: UIControlState.normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        btn.addTarget(self, action: #selector(moreBtnAction(btn:)), for: UIControlEvents.touchUpInside)
        return btn
    }()
    
    @objc func moreBtnAction(btn: UIButton){
        
    }
}
