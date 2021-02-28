//
//  GitHubAPI.swift
//  TsuExam
//
//  Created by Chris Schoenfeld on 2/26/21.
//

import Foundation

class GitHubAPI{
    
    let GHAPIEndPoint = "https://api.github.com/repos/magicalpanda/MagicalRecord/pulls?state=open"
    
    struct Response: Codable{
        let title:String?
        let state:String?
    }
    
    func fetchPRs(completionHandler: @escaping ([Response]) -> Void) {
        
        let urlString = GHAPIEndPoint
        let url = URL(string: urlString)
        let task = URLSession.shared.dataTask(with: url!, completionHandler: { data, response, error in
        
        guard let data = data, error == nil else{
            print("error")
            return
        }
    
        var result: [Response]?
        
        do {
            result = try JSONDecoder().decode([Response].self, from: data)
        }
        catch {
            print("Error: \(error)")
        }
    
        guard let json = result else{
            return
        }
        
        completionHandler(json)
    })
    
    task.resume()
        
    }
    
}
