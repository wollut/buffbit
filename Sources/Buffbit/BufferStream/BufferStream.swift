//
//  Created by Anton Spivak
//

// MARK: - ByteArrayStream

public struct BufferStream {
    // MARK: Lifecycle

    public init(_ buffer: Buffer) {
        self.buffer = buffer
    }

    // MARK: Public

    public var remaining: Remaining {
        Remaining(
            caret: caret,
            original: buffer
        )
    }

    public mutating func read() throws -> BufferElement {
        let next = try read(1)
        return next[0]
    }

    public mutating func read(_ next: Int) throws -> Buffer {
        let remainingBuffer = remaining.buffer
        guard remainingBuffer.count >= next
        else {
            throw Error.notEnoughBytes
        }

        caret += next

        return Array(remainingBuffer[0 ..< next])
    }

    public mutating func skip() throws {
        try skip(0)
    }

    public mutating func skip(_ next: Int) throws {
        let remainingCount = remaining.count
        guard remainingCount >= next
        else {
            throw Error.notEnoughBytes
        }

        caret += next
    }

    public mutating func reset() {
        caret = 0
    }

    // MARK: Private

    private var buffer: Buffer

    private var caret: Int = 0
}
