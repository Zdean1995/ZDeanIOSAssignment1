//
//  apiHelper.swift
//  ZDeanAssignment1
//
//  Created by Zachary on 2023-05-15.
//

import Foundation

class apiHelper {
    //url for getting magic the gathering card information from scryfall
    //https://scryfall.com/docs/api
    private static let mtgURL = URL(string: "https://api.scryfall.com")!
    
    //url for getting yugioh card information from ygoprodeck
    //https://ygoprodeck.com/api-guide/
    private static let ygoURL = URL(string: "https://db.ygoprodeck.com/api/v7/cardinfo.php")!
    
    //url for getting runescape grand exchange info from the runecape api
    //https://runescape.wiki/w/Application_programming_interface#Grand_Exchange_Database_API
    private static let rsURL = URL(string: "https://secure.runescape.com/m=itemdb_rs/api/info.json")!
    
    //returns something, even if it's a heads up that more needs to be added to the url to get anything specific
    public static func fetchMtg() async -> Any {
        let (data, _) = try! await URLSession.shared.data(from: mtgURL)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
    
    //returns information about some cards
    public static func fetchYgo() async -> Any {
        let (data, _) = try! await URLSession.shared.data(from: ygoURL)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
    
    //returns the "runeday" that the database was last updated.  Runeday is the number of days since runescape was created.
    public static func fetchRs() async -> Any {
        let (data, _) = try! await URLSession.shared.data(from: rsURL)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}
