//
//  ViewController.swift
//  Final Project
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 SHP. All rights reserved.
//

import UIKit
import SpriteKit
import Social

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet var quoteLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    //sets labels to be hooked up to storyboard 
    
    
    
    let quotes = ["The most difficult thing is the decision to act, \nthe rest is merely tenacity. \nThe fears are paper tigers. \nYou can do anything you decide to do. \nYou can act to change and control your life; \nand the procedure, \nthe process is its own reward.",
                  "The only journey is the one within.",
                  "Learning never exhausts the mind"]
    //gives array of all quotes in the library
    
    
    let authors = ["Amelia Earhart",
                   "Rainer Maria Rilke",
                   "Leonardo Da Vinci"]
    //gives array of all authors corresponding to their quote in the library
    
    @IBAction func getRandomQuote(_sender: AnyObject) {
        //get random index
        let arrayCount = UInt32(quotes.count)
        let randomNumber = arc4random_uniform(arrayCount)
        let finalNumber = Int(randomNumber)
        //gets a random number to be used for selecting a quote
        let finalQuote = quotes[finalNumber]
        let finalAuthor = authors[finalNumber]
        //sets random number equal to the index for both arrays
        quoteLabel.text = finalQuote
        authorLabel.text = finalAuthor
        //sets label text equal to the random quote and its correct author 
        
    }
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func shareButtonPressed(_sender: UIButton) {
        
    let alert = UIAlertController(title: "Share", message: "Share your Quote! Only works if you have Twitter.", preferredStyle: .actionSheet)
    
    
    //displays when share button is clicked
    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        ////displays "Cancel" option to get out of pull up menu
    
    let twitterAction = UIAlertAction(title: "Share on Twitter", style: .default) { (action) in
        print("Success")
        
        
        
        //Check to see if user is connected to Twitter
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeTwitter) {
            
            let post = SLComposeViewController(forServiceType: SLServiceTypeTwitter)!
            //connects post to be able to post on twitter
            post.setInitialText(self.quoteLabel.text)
            
            //sets quote equal to what will be posted
            //if user is connected to twitter, it tweets out the quote on their profile
            self.present(post, animated: true, completion: nil)
        }
            
    
        }
    
    
    //add to actionsheet
    alert.addAction(twitterAction)
    //offers post on twitter action
    alert.addAction(cancelAction)
    //offers to cancel posting on twitter
    self.present(alert, animated: true, completion: nil)
}// checks to see if post was made 



    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


 
}



    
    









