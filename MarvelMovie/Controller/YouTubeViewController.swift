//
//  YouTubeViewController.swift
//  MarvelMovie
//
//  Created by AndyPan on 2018/3/22.
//  Copyright © 2018年 Andy Pan. All rights reserved.
//

import UIKit
import WebKit

class YouTubeViewController: UIViewController,WKNavigationDelegate {

    @IBOutlet var youTube: WKWebView!
    
    @IBOutlet var loadingIndicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        youTube.navigationDelegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        loadYouTube(videoID: "QwievZ1Tx-8")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadYouTube(videoID:String){
        guard
            let youtubeURL = URL(string:"https://www.youtube.com/embed/\(videoID)")
        else {
            return;
        }
        
        youTube.load(URLRequest(url: youtubeURL))
        
        if youTube.isLoading {
            loadingIndicator.startAnimating()
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        if !youTube.isLoading {
            loadingIndicator.stopAnimating()
        }
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
