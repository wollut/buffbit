//
//  Created by Anton Spivak
//

import Foundation

// MARK: - BufferStream.Error

public extension BufferStream {
    enum Error {
        case notEnoughBytes
    }
}

// MARK: - BufferStream.Error + LocalizedError

extension BufferStream.Error: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .notEnoughBytes:
            return "[StreamError]: Not enough bytes."
        }
    }
}
