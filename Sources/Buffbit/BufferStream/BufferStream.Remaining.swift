//
//  Created by Anton Spivak
//

// MARK: - BufferStream.Remaining

public extension BufferStream {
    struct Remaining {
        // MARK: Lifecycle

        internal init(caret: Int, original: Buffer) {
            self.caret = caret
            self.original = original
        }

        // MARK: Private

        private let caret: Int
        private let original: Buffer
    }
}

public extension BufferStream.Remaining {
    // MARK: Internal

    var buffer: Buffer {
        let count = count
        if count > 0 {
            return Array(original[caret ..< original.count - 1])
        } else {
            return []
        }
    }

    var count: Int {
        original.count - caret
    }
}
