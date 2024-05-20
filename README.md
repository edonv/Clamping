# Clamping

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
