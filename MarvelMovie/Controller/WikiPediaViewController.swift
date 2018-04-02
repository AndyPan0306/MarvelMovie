//
//  WikiPediaViewController.swift
//  MarvelMovie
//
//  Created by AndyPan on 2018/3/22.
//  Copyright © 2018年 Andy Pan. All rights reserved.
//

import UIKit
import WebKit

class WikiPediaViewController: UIViewController,WKNavigationDelegate {

    @IBOutlet var backButton: UIButton!
    @IBOutlet var forwardButton: UIButton!
    @IBOutlet var wikiPediaWebView: WKWebView!
    @IBOutlet var indicatorView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //使用代理人機制,要使用navigationDelegate內的方法
        //因此讓WikiPediaViewController遵循WKNavigationDelegate
        //而自己遵循後則有navigationDelegate的型別,因此呼叫自己便可使用
        wikiPediaWebView.navigationDelegate = self

    }
    
    override func viewDidAppear(_ animated: Bool) {
        loadWebView()
    }
    
    func loadWebView() {
        
        guard let wikiURL:URL = URL(string:"https://zh.wikipedia.org/wiki/%E6%BC%AB%E5%A8%81%E5%BD%B1%E4%B8%9A")
            else {
                return;
        }
        
        wikiPediaWebView.load(URLRequest(url: wikiURL))
        
        //判斷loading是否為boolean,如果為true將indicatorView開始動畫
        if wikiPediaWebView.isLoading {
            indicatorView.startAnimating()
        }
        
    }
    //上一頁
    @IBAction func backButtonTapped(_ sender: Any) {
        if wikiPediaWebView.canGoBack {
            wikiPediaWebView.goBack()
        }
        
    }
    //下一頁
    @IBAction func forwardButtonTapped(_ sender: Any) {
        if wikiPediaWebView.canGoForward {
            wikiPediaWebView.goForward()
        }
    }
    //webView完成後執行所要做的事情
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        //判斷是否可以使用,如有有進入到別的網頁下,則可以使用
        backButton.isEnabled = wikiPediaWebView.canGoBack
        forwardButton.isEnabled = wikiPediaWebView.canGoForward
        //判斷loading是否為boolean,如果為fasle則將indicatorView停止動畫
        if !wikiPediaWebView.isLoading{
            indicatorView.stopAnimating()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
