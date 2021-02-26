//
//  ViewController.swift
//  TsuExam
//
//  Created by Chris Schoenfeld on 2/26/21.
//

import UIKit

class ViewController: UIViewController {

    let ghAPI = GitHubAPI()
    var prs = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        self.fetchPRs()
    
    }

    func fetchPRs(){
    
        ghAPI.fetchPRs { [weak self] (pullRequests) in
            self?.prs = pullRequests

            DispatchQueue.main.async {
                //reload
            }
          }

    }
    
    

}

