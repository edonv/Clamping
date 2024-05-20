# Clamping

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fedonv%2FClamping%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/edonv/Clamping)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fedonv%2FClamping%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/edonv/Clamping)

A simple library for conveniently clamping values to ranges.

## Examples

```swift
let clamped1 = 25.clamped(to: 0...12) // = 12
let clamped2 = 10.clamped(to: 0...12) // = 10
let clamped3 = -10.clamped(to: 0...12) // = 0

let clamped4 = 25.clamped(to: 50...) // = 50
let clamped5 = 60.clamped(to: 50...) // = 60

let clamped6 = 25.clamped(to: ...50) // = 25
let clamped7 = 60.clamped(to: ...50) // = 50
```
