//
//  File.swift
//  
//
//  Created by Iqbal Nur Haq on 03/01/23.
//

import Foundation

public enum URLError: LocalizedError {
    case invalidRequest
    case invalidResponse
    case addressUnreachable(URL)
    case custom(String)
    
    public var errorDescription: String? {
        switch self {
        case .invalidRequest: return "Request is null."
        case .invalidResponse: return "The server responded with garbage."
        case .addressUnreachable(let url): return "\(url.absoluteString) is unreachable."
        case .custom(let message): return "\(message)"
        }
    }
}

public enum DataBaseError: LocalizedError {
    case invalidInstance
    case requestFailed
    
    public var errorDescription: String? {
        switch self {
        case  .invalidInstance: return "Database can't instance."
        case .requestFailed: return "Your request failed."
        }
    }
}
