//
//  File.swift
//  
//
//  Created by gavin on 2022/8/10.
//

import Foundation

extension Comparable {
    func clampedValue(to limits: ClosedRange<Self>) -> Self {
        return min(max(self, limits.lowerBound), limits.upperBound)
    }
}
