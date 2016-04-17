//
//  SecondViewController.swift
//  PoliTweets
//
//  Created by Aaron Brzowski on 4/17/16.
//  Copyright © 2016 Aaron Brzowski. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var twitterTableView: UITableView!
    @IBOutlet weak var dynamicWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL (string: "http://54.208.32.189/ios")
        let request = NSURLRequest(URL: url!)
        
        
        dynamicWebView.loadRequest(request)
        
        dynamicWebView.scalesPageToFit = true
        dynamicWebView.scrollView.scrollEnabled = false
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //variable type is inferred
        var cell = tableView.dequeueReusableCellWithIdentifier("twitterCell") as? TwitterCell
        
        if cell == nil {
            cell = TwitterCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "twitterCell")
        }
        
        let handles: [String] = ["I would have millions of votes more than Hillary except for the fact that I had 17 opponents and she just had a socialist named Bernie!", "@realDonaldTrump Mr. Trump, is it an idea to produce toiletpaper with her face on it? #MakeAmericaGreatAgain pic.twitter.com/JejI1MRcY8", "@realDonaldTrump The US is going to collapse if Hillary wins.","@realDonaldTrump Democrats don't know how math works.","@TacoFetus Attacking intelligence? Have you seen a Trump Rally? It's like someone took a dump in the gene pool but people keep swimming."]
        
        //if (indexPath.row > handles.size) { //Accessing array out of bounds }
        
        cell!.handleLabel.text = handles[indexPath.row]
        return cell!
    }
    
}
