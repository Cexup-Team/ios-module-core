//
//  File.swift
//  
//
//  Created by Iqbal Nur Haq on 11/01/23.
//

import Foundation

public class Prefs
{
    private let defaults = UserDefaults.standard
  
    private let keyAccessTokenPrefs = "tokenPrefs"
  
    public var accessTokenPrefs: String {
        set {
            defaults.setValue(newValue, forKey: keyAccessTokenPrefs)
        }
        get {
            return defaults.string(forKey: keyAccessTokenPrefs) ?? ""
        }
    }
  
    public class var shared: Prefs {
        struct Static {
            static let instance = Prefs()
        }
      
        return Static.instance
    }
}
