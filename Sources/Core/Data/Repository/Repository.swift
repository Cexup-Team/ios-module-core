//
//  File.swift
//  
//
//  Created by Iqbal Nur Haq on 03/01/23.
//

import Foundation
import Combine

public protocol Repository {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request?) -> AnyPublisher<Response, Error>
}
