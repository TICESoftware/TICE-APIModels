public enum APIResponse<T: Codable> {

    case success(T)
    case error(APIError)

    public init(_ result: T) {
        self = .success(result)
    }

    public init(error errorType: APIError.ErrorType, description: String) {
        self = .error(APIError(type: errorType, description: description))
    }
}

extension APIResponse: Codable {

    enum CodingKeys: String, CodingKey {
        case success
        case result
        case error
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        let success = try values.decode(Bool.self, forKey: .success)

        if success {
            let result = try values.decode(T.self, forKey: .result)
            self = .success(result)
        } else {
            let error = try values.decode(APIError.self, forKey: .error)
            self = .error(error)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .success(let result):
            try container.encodeIfPresent(result, forKey: .result)
            try container.encode(true, forKey: .success)
        case .error(let error):
            try container.encode(error, forKey: .error)
            try container.encode(false, forKey: .success)
        }
    }
}

public enum EmptyAPIResponse {

    case success
    case error(APIError)

    public init() {
        self = .success
    }

    public init(error errorType: APIError.ErrorType, description: String) {
        self = .error(APIError(type: errorType, description: description))
    }
}

extension EmptyAPIResponse: Codable {

    enum CodingKeys: String, CodingKey {
        case success
        case error
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        let success = try values.decode(Bool.self, forKey: .success)

        if success {
            self = .success
        } else {
            let error = try values.decode(APIError.self, forKey: .error)
            self = .error(error)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .success:
            try container.encode(true, forKey: .success)
        case .error(let error):
            try container.encode(error, forKey: .error)
            try container.encode(false, forKey: .success)
        }
    }
}
