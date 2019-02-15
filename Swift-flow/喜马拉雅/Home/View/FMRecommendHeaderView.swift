//
//  FMRecommendHeaderView.swift
//  Swift-flow
//
//  Created by 白蜡树 on 2019/2/13.
//  Copyright © 2019 白蜡树. All rights reserved.
//

import UIKit
import SnapKit

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
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUPUI()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func setUPUI() {
        self.addSubview(self.titleLab)
        self.titleLab.text = "猜你喜欢"
        self.titleLab.snp.makeConstraints { (m) in
            m.left.top.equalTo(15)
            m.width.equalTo(150)
            m.height.equalTo(30)
        }
        
        self.addSubview(self.subLab)
        self.subLab.snp.makeConstraints { (make) in
            make.right.equalTo(15)
            make.height.top.equalTo(self.titleLab)
            make.right.equalToSuperview().offset(-100)
        }
        
        self.addSubview(self.moreBtn)
        self.moreBtn.snp.makeConstraints { (make) in
            make.right.equalTo(15)
            make.top.equalTo(15)
            make.width.equalTo(100)
            make.height.equalTo(30)
        }
    }
    
    var homeRecommendList: HomeRecommendModel? {
        didSet{
            guard let model = homeRecommendList else {
                return
            }
            if model.title != nil {
                titleLab.text = model.title
            }else{
                titleLab.text = "猜你喜欢"
            }
        }
    }
    
    
    @objc func moreBtnAction(btn: UIButton){
        guard let headerMoreBtnClick = headerMoreBtnClick else {
            return
        }
        headerMoreBtnClick()
    }
}
