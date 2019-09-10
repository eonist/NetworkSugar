import Foundation
/**
 * New - Using Result type
 */
extension NetworkParser {
   // Data tuples
   public typealias StringAndResponse = (string: String, response: URLResponse)
   public typealias DataAndResponse = (data: Data, response: URLResponse)
   // Completion callback
   public typealias OnStrDownloadComplete = (Result<String, NetworkError>) -> Void
   public typealias OnDataDownloadCompleted = (Result<Data, NetworkError>) -> Void
   // Completion callback (With response)
   public typealias OnStringDownloadComplete = (Result<StringAndResponse, NetworkError>) -> Void
   public typealias OnDataDownloadComplete = (Result<DataAndResponse, NetworkError>) -> Void
}
