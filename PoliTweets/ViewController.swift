//
//  FirstViewController.swift
//  PoliTweets
//
//  Created by Aaron Brzowski on 4/17/16.
//  Copyright © 2016 Aaron Brzowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var tweetAmountSlider: UISlider!
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        let currentValue = Int(sender.value)
        label.text = "\(currentValue)"
    
        webView.stringByEvaluatingJavaScriptFromString("changedSlider("+String(currentValue)+")")
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tweetAmountSlider.minimumTrackTintColor = UIColor.darkGrayColor()
        tweetAmountSlider.minimumValue = 100
        tweetAmountSlider.maximumValue = 9500
        tweetAmountSlider.setThumbImage(UIImage(named: "Image-2")!, forState: .Normal)
        let url = NSURL (string: "http://54.208.32.189/ios")
        let request = NSURLRequest(URL: url!)
      //  let longGesture = UILongPressGestureRecognizer(target: self, action: Selector("Long")) //Long function will call when user long press on button.
       // refreshDetector.addGestureRecognizer(longGesture)


        
        webView.loadRequest(request)
        webView.scalesPageToFit = true
        webView.scrollView.scrollEnabled = false
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

