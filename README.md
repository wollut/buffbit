# Buffbit

Simplify work with bits a little

## Installation
```swift
.package(
    url: "https://github.com/whalescorp/buffbit.git",
    .upToNextMajor(from: "0.1.0")
)
```

## Usage
```swift
let bigEndianBuffer: Buffer = [0x07, 0x5B, 0xCD, 0x15]
let bufferDecimal = UInt32(buffer: bigEndianBuffer, endianness: .big)

let bigEndianBinary: Binary = [.one, .zero, .one, .zero, .one, .zero]
let binaryDecimal = UInt32(binary: bigEndianBinary, endianness: .big)
```

## Authors
- anton@wollut.com
