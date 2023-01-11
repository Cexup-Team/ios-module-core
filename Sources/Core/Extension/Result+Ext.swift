//
//  File.swift
//  
//
//  Created by Iqbal Nur Haq on 03/01/23.
//

import Foundation
import RealmSwift

extension Results {
    public func toArray<T>(ofType: T.Type) -> [T] {
        var array = [T]()
        for index in 0 ..< count {
            if let result = self[index] as? T {
                array.append(result)
            }
        }
        
        return array
    }
}
