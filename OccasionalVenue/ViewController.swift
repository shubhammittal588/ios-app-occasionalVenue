//
//  ViewController.swift
//  OccasionalVenue
//
//  Created by Shubham Mittal on 25/09/21.
//  Copyright © 2021 Shubham Mittal. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://occasionalvenue.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}
