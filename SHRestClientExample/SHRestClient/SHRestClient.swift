//
//  SHRestClient.swift
//  SHRestClientExample
//
//  Created by Subhajit Halder on 19/07/17.

//

import UIKit
//import Reachability
//import SVProgressHUD


typealias ResponseErrorBlock = (Error?) -> Void
typealias ResponseSuccessBlock = (Data?, URLResponse?) -> Void


final class SHRestClient: NSObject {
    
    internal var request: URLRequest!
    
    internal var httpSessionConfiguration: URLSessionConfiguration = .default
    
    internal let boundary = "----SHRestClientFormBoundary32E6xxV194klWY1384Xcjie"
    
    var sessionConfiguration: URLSessionConfiguration {
        set {
            self.httpSessionConfiguration = newValue
        }
        get {
            return self.httpSessionConfiguration
        }
    }
    
    init(_ url: String) {
        
        guard let urlForRequest = URL(string: url) else {
            print("Not valid URL String")
            return
        }
        self.request = URLRequest(url: urlForRequest, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 15.0)
    }
    
}

