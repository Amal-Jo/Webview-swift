//
//  ViewController.swift
//  WebView
//
//  Created by Amal Joseph on 2020-08-11.
//  Copyright © 2020 Amal Joseph. All rights reserved.
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
        
        let myURL = URL(string:"https://thingspeak.com/channels/1109725")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}

