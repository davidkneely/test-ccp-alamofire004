//
//  ViewController.swift
//  test-ccp-alamofire004
//
//  Created by pair on 12/29/16.
//  Copyright © 2016 pair. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = "acc_c954e54d37e4be9"
        let password = "0d2f9fcbbdda702b59e7795d1237e382"
        
        var headers: HTTPHeaders = [:]
        
        if let authorizationHeader = Request.authorizationHeader(user: user, password: password) {
            headers[authorizationHeader.key] = authorizationHeader.value
            //headers["Accept":"application/json"]
            
        }
        
        Alamofire.request("https://api.imagga.com/v1/tagging?url=http://thehorseaholic.com/wp-content/uploads/2015/08/bigstock-Child-riding-a-horse-in-meadow-44787883-2.jpg", headers: headers)
            .responseJSON { response in
                debugPrint(response)
        }
        
    }

}

