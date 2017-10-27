//
//  APIManager.swift
//  AlamoFireSwift4Example
//
//  Created by Vasudha Jags on 10/25/17.
//  Copyright © 2017 Vasudha J. All rights reserved.
//

import Foundation
import Alamofire
struct Result : Decodable{
    var time : Time
    var disclaimer : String
    var chartName : String
    var bpi : BPI
   
}

struct Time : Decodable{
    var updated: String
    var updatedISO: String
    var updateduk: String
    
}

struct BPI : Decodable{
    var USD : USD
    var GBP :GBP
    var EUR : EUR
}

struct GBP : Decodable{
    var code : String
   var symbol : String
   var rate : String
    var description : String
    var rate_float : Double
}

struct EUR : Decodable{
    var code : String
    var symbol : String
    var rate : String
    var description : String
    var rate_float : Double
}
struct USD : Decodable{
    var code : String
    var symbol : String
    var rate : String
    var description : String
    var rate_float : Double
}


class LoadWebService{
    
    func performParsing(){
        //Using Alamofire
        Alamofire.request("https://api.coindesk.com/v1/bpi/currentprice.json").responseJSON { (response) in
            print(response)
           
//            if let jsonObject = response.result.value{
//                let resultDictionary : Dictionary = jsonObject as! Dictionary<String,Any>
//                let bpiDictionary : Dictionary = resultDictionary["bpi"] as! Dictionary<String,Any>
//                 let gbpDictionary : Dictionary = bpiDictionary["USD"] as! Dictionary<String,Any>
//                let rate: String = gbpDictionary["rate"] as! String
//
//                print("Rate in gbp is ", rate)
//            }
//
//        }
//
//        //Using JSONSerialzation
//        let jsonURLString = "https://api.coindesk.com/v1/bpi/currentprice.json"
//        guard let url = URL(string: jsonURLString) else{
//            return
//        }
//        URLSession.shared.dataTask(with: url) { (data, response, err) in
//            guard let data = data else { return }
//
//            do{
//                let  jsonResult = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers)
//                print("Jsonresult is ", jsonResult)
//                let jsonObjectAsDictionary : Dictionary = jsonResult as! Dictionary<String,Any>
//                print("JSONObjects :", jsonObjectAsDictionary)
//                let bpiDictionary : Dictionary = jsonObjectAsDictionary["bpi"] as! Dictionary<String,Any>
//                print("bpi dictionary ", bpiDictionary)
//                print(bpiDictionary["USD"])
//                let eurDictionary : Dictionary = bpiDictionary["EUR"] as! Dictionary<String,Any>
//                print(eurDictionary)
//                print(eurDictionary["symbol"])
//            }catch let jsonError{
//
//                print("Eroor in JSON serialization: ",jsonError)
//            }
//
//            }.resume()
        
        //Using JSONDecoder
        do{
            //Swift 4 and from Xcode 9.X
            let result = try JSONDecoder().decode(Result.self, from: response.data!)
            print("-------USIN JSON DECODER------",result )


        }catch let jsonError{

            print("Eroor in JSON Decoder: ",jsonError)
        }
    }
    }
}
