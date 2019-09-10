import Foundation
/**
 * Default callbacks (New for Result type)
 */
extension NetworkParser {
   /**
    * Default callback method for data(URLRequest) and data(URL) calls
    */
   public static var defaultOnDataCompleted: OnDataDownloadCompleted = { result in
      if case .success(let data) = result {
         Swift.print("data.count: \(data.count)")
      } else if case .failure(let error) = result {
         Swift.print("error:  \(String(describing: error))") // print(error.localizedDescription)
      }
   }
   /**
    * Default callback method for data(URLRequest) and data(URL) calls
    */
   public static var defaultOnDataComplete: OnDataDownloadComplete = { result in
      if case .success(let dataAndResponse) = result {
         Swift.print("data.count: \(dataAndResponse.data.count) response: \(dataAndResponse.response)")
      } else if case .failure(let error) = result {
          Swift.print("error:  \(String(describing: error))") // print(error.localizedDescription)
      }
   }
   /**
    * Default completion block for string download
    */
   public static var defaultOnStrDownloadComplete: OnStrDownloadComplete = { result in
      if case .success(let string) = result {
         Swift.print("string.count: \(string.count)")
      } else if case .failure(let error) = result {
         Swift.print("error:  \(String(describing: error))") // print(error.localizedDescription)
      }
   }
   /**
    * Default completion block for string download
    */
   public static var defaultOnStringDownloadComplete: OnStringDownloadComplete = { result in
      if case .success(let stringAndResponse) = result {
         Swift.print("string.count: \(stringAndResponse.string.count) response: \(stringAndResponse.response)")
      } else if case .failure(let error) = result {
         Swift.print("error:  \(String(describing: error))") // print(error.localizedDescription)
      }
   }
}
