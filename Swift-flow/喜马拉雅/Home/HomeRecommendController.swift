//
//  HomeRecommendController.swift
//  Swift-flow
//
//  Created by 白蜡树 on 2019/2/12.
//  Copyright © 2019 白蜡树. All rights reserved.
//

import UIKit
import SwiftyJSON
import HandyJSON
import SwiftMessages

class HomeRecommendController: HomeBaseViewController {

    let otherMessages = SwiftMessages()
    // MARK - 数据模型
    private var recommnedAdvertList:[RecommnedAdvertModel]? // 穿插的广告数据
    //MARK - cell 注册ID
    private let FMRecommendHeaderViewID     = "FMRecommendHeaderView"
    private let FMRecommendFooterViewID     = "FMRecommendFooterView"
    
    private let FMRecommendHeaderCellID     = "FMRecommendHeaderCell"
    private let FMRecommendGuessLikeCellID  = "FMRecommendGuessLikeCell"
    private let FMHotAudiobookCellID        = "FMHotAudiobookCell"
    private let FMAdvertCellID              = "FMAdvertCell"
    private let FMOneKeyListenCellID        = "FMOneKeyListenCell"
    private let FMRecommendForYouCellID     = "FMRecommendForYouCell"
    private let HomeRecommendLiveCellID     = "HomeRecommendLiveCell"
    
    /*
     
     ssss
     */
    
//    lazy var collection:UICollectionView {
//        let layout = UICollectionViewFlowLayout.init()
//        let collection = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
////        collection.delegate = self;
////        collection.dataSource = self;
//        collection.backgroundColor = .white
////        collection.register(<#T##viewClass: AnyClass?##AnyClass?#>, forSupplementaryViewOfKind: <#T##String#>, withReuseIdentifier: <#T##String#>)
//        
//        
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = .green;
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
