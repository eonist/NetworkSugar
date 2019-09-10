import Foundation
/**
 * Error (New with support for ResultType)
 */
extension NetworkParser {
   public enum NetworkError: Error {
      case invalidWebPath
      case dataIsNotString
      case dataIsNil
      case responseIsNil
      case errorGettingDataFromURL(Error, URLResponse)
   }
}
