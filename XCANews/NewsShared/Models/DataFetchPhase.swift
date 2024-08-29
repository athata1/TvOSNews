//
//  DataFetchPhase.swift
//  TvOSNews
//
//  Created by Akhil Thata on 8/27/24.
//

import Foundation

enum DataFetchPhase<T> {
    
    case empty
    case success(T)
    case failure(Error)
    
    var value: T? {
        if case .success(let value) = self {
            return value;
        }
        else {
            return nil;
        }
    }
}
