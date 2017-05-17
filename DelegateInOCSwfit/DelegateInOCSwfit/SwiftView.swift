//
//  SwiftView.swift
//  DelegateInOCSwfit
//
//  Created by 王锦涛 on 2017/5/17.
//  Copyright © 2017年 JTWang. All rights reserved.
//

import UIKit

// 1，定义协议
@objc protocol SwiftViewDelegate {
    
    func removeSwiftView()
    func printHello()
}

class SwiftView: UIView {

    var mainView : UIView!
    
    // 2，添加代理属性
    var delegate : SwiftViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        mainView = Bundle.main.loadNibNamed("SwiftView", owner: self, options: nil)!.last as! UIView
        mainView.frame = self.bounds
        self.addSubview(mainView)
    }
    
    @IBAction func didClickRemoveBUtton(_ sender: Any) {
        
        // 3，调用代理方法
        self.delegate?.removeSwiftView()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
