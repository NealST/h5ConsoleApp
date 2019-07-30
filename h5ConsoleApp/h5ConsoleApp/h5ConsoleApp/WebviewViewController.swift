//
//  WebviewViewController.swift
//  h5ConsoleApp
//
//  Created by didi on 2019/7/29.
//  Copyright © 2019年 didi. All rights reserved.
//
import UIKit
import WebKit
import Foundation

class WebviewViewController: UIViewController, WKUIDelegate {
    var webView: WKWebView!
    var htmlUrl: String!
    
    override func loadView() {
      let webConfiguration = WKWebViewConfiguration()
      webView = WKWebView(frame: .zero, configuration: webConfiguration)
      webView.uiDelegate = self
      view = webView
    }
    
    override func viewDidLoad() {
      super.viewDidLoad()
      let targetUrl = URL(string: htmlUrl)
      let targetRequest = URLRequest(url: targetUrl!)
      webView.load(targetRequest)
    }
}

