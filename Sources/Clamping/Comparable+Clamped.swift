//
//  Comparable+Clamped.swift
//  
//
//  Created by Edon Valdman on 5/20/24.
//

import Foundation

extension Comparable {
    /// "Clamps" the value to the provided range's bounds.
    /// 
    /// This means it will return the original value only if it is within the bounds of `range`. Otherwise, the returned value will be the bound that was exceeded.
    /// - Parameter range: The range to clamp to.
    /// - Returns: The clamped value.
    public func clamped<R: ClampableRange>(to range: R) -> Self where R.Bound == Self {
        range.clamp(self)
    }
}
