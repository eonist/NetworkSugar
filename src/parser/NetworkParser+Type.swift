import Foundation
/**
 * Type
 */
extension NetworkParser {
   public typealias DownloadComplete = (String?, DownloadError?) -> Void
   public typealias DataDownloadComplete = (Data?, DownloadError?) -> Void
   public typealias URLQuery = (Data?, URLResponse?, Error?) -> Void
}
/**
 * New - Using Result type
 */
extension NetworkParser {
   public typealias OnDownloadComplete = (Result<String, DownloadError>) -> Void
   public typealias OnDataDownloadComplete = (Result<Data, DownloadError>) -> Void
}
extension NetworkParser {
   func process(_ str: String, onComplete: @escaping OnDownloadComplete) {
      do {
         var image = try transformer.transform(image)
         image = try filter.apply(to: image)
         completion(.success(image))
      } catch {
         completion(.failure(error))
      }
   }
}
