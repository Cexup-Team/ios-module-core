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
    private let keyUserIdPrefs = "userIdPrefs"
    private let keyDoctorIdPrefs = "doctorIdPrefs"
    private let keyUserCodePrefs = "userCodePrefs"
    private let keyNoType = "noTypePrefs"
    private let keyDoctorHospitalIdPrefs = "doctorHospitalIdPrefs"
    private let keyOnboardingPatient = "onBoardingPatientPrefs"
    private let keyNotifToken = "notifTokenPrefs"

  
    public var accessTokenPrefs: String {
        set {
            defaults.setValue(newValue, forKey: keyAccessTokenPrefs)
        }
        get {
            return defaults.string(forKey: keyAccessTokenPrefs) ?? ""
        }
    }
    
    public var userIdPrefs: String {
        set {
            defaults.setValue(newValue, forKey: keyUserIdPrefs)
        }
        get {
            return defaults.string(forKey: keyUserIdPrefs) ?? ""
        }
    }
    
    public var doctorIdPrefs: String {
        set {
            defaults.setValue(newValue, forKey: keyDoctorIdPrefs)
        }
        get {
            return defaults.string(forKey: keyDoctorIdPrefs) ?? ""
        }
    }
    
    public var userCodePrefs: String {
        set {
            defaults.setValue(newValue, forKey: keyUserCodePrefs)
        }
        get {
            return defaults.string(forKey: keyUserCodePrefs) ?? ""
        }
    }
    
    public var doctorHospitalIdPrefs: Int {
        set {
            defaults.setValue(newValue, forKey: keyDoctorHospitalIdPrefs)
        }
        get {
            return defaults.integer(forKey: keyDoctorHospitalIdPrefs)
        }
    }
    
    public var onBoardingPatientPrefs: Bool {
        set {
            defaults.setValue(newValue, forKey: keyOnboardingPatient)
        }
        get {
            return defaults.bool(forKey: keyOnboardingPatient)
        }
    }
    
    public var notifTokenPrefs: String {
        set {
            defaults.setValue(newValue, forKey: keyNotifToken)
        }
        get {
            return defaults.string(forKey: keyNotifToken) ?? ""
        }
    }
    
    public var noTypePrefs: String {
        set {
            defaults.setValue(newValue, forKey: keyNoType)
        }
        get {
            return defaults.string(forKey: keyNoType) ?? ""
        }
    }
  
    public class var shared: Prefs {
        struct Static {
            static let instance = Prefs()
        }
      
        return Static.instance
    }
}
