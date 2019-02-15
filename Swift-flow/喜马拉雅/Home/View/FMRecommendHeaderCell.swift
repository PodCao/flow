//
//  FMRecommendHeaderCell.swift
//  Swift-flow
//
//  Created by 白蜡树_iOS_曹宇 on 2019/2/14.
//  Copyright © 2019 白蜡树. All rights reserved.
//

import UIKit

protocol FMRecommendHeaderCellDelegate:NSObjectProtocol {
    func recommendHeaderBtnClick(category: String,title: String,url: String) -> Void
    func recommendHeaderBannerClick(url: String) -> Void
    
}

class FMRecommendHeaderCell: UICollectionViewCell {
    weak var delegate : FMRecommendHeaderCellDelegate?
    
    private var focus: FocusModel?
    private var squares:[SquareModel]?
    private var topBuzzList:[TopBuzzModel]?
    
    private lazy var pageView: FSPagerView = {
        let pageView = FSPagerView()
        pageView.delegate = self
        pageView.dataSource =  self
        pageView.automaticSlidingInterval =  3
        pageView.isInfinite = true
        pageView.interitemSpacing = 15
        pageView.transformer = FSPagerViewTransformer(type: .linear)
        pageView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        return pageView
    }()
}
extension FMRecommendHeaderCell: FSPagerViewDelegate,FSPagerViewDataSource{
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        return focus?.data?.count ?? 0
    }
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        cell.imageView?.kf.setImage(with: URL(string: (self.focus?.data?[index].cover)!))
        return cell
    }
    func pagerView(_ pagerView: FSPagerView, didSelectItemAt index: Int) {
        let url = self.focus?.data?[index].link ?? ""
        delegate?.recommendHeaderBannerClick(url: url)
    }
}
