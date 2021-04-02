//
//  MediaCaptureDemoCon.swift
//  LGMediaBrowserDemo
//
//  Created by 龚杰洪 on 2018/7/26.
//  Copyright © 2018年 龚杰洪. All rights reserved.
//

import UIKit
import LGMediaBrowser

class MediaCaptureDemoCon: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        LGStatusBarTips.show(withStatus: "这是一个非常常见的错误",
                             style: LGStatusBarConfig.Style.error)
        
        do {
            try LGAuthorizationStatusManager.default.requestPrivacy(withType: .contacts) { (type, status) in
                
            }
        } catch {
            LGStatusBarTips.show(withStatus: error.localizedDescription,
                                 style: LGStatusBarConfig.Style.error)
        }
        
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 60, height: 40)
        button.center = self.view.center
        button.setTitleColor(UIColor.red, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitle("测试", for: .normal)
        button.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        self.view.addSubview(button)
       
    }
    

    @objc func btnAction(_ btn: UIButton) {
        LGStatusBarTips.show(withStatus: "点击了一个按钮",style: .success)
//        LGStatusBarTips.show(withStatus: "这是一个非常常见的错误",
//                             style: LGStatusBarConfig.Style.error)
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
