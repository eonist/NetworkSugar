import Foundation
/**
 * String
 */
extension NetworkParser {
   /**
    * Return string for WebPath
    * - Remark: should be added to a bg thread
    * - Remark: For multiple varaiables etc: param1=value1&param2=value2
    * - Remark: Calls are not in any threads. Wrap in background from the caller POV
    * ## Examples:
    * let webPath: String = "https://github.com/stylekit/img/blob/master/playlist.json?raw=true"
    * NetworkParser.str(webPath: webPath) { (string: String?, error: DownloadError?) in
    *    if let str = string {
    *       Swift.print("str:  \(str)")
    *    } else {
    *       Swift.print("error:  \(String(describing: error))")
    *    }
    * }
    * - Parameter urlStr: (Webpath) i.e: "https://www.google.com/dev/push?=someValue"
    */
   public static func str(urlStr: String, httpMethod: HTTPMethodType = .get, onComplete:@escaping DownloadComplete = defaultDownloadComplete) {
      guard let url = URL(string: urlStr) else { onComplete(nil, .invalideWebPath); return }
      str(url: url, httpMethod: httpMethod, downloadComplete: onComplete)
   }
   /**
    * Return string for URL
    * ## Examples:
    * NetworkParser.str(url: url)
    * - Remark: Calls are not in any threads. Wrap in background from the caller POV
    * - Note: You can debug more closley with: response?.suggestedFilename and url.lastPathComponent
    */
   public static func str(url: URL, httpMethod: HTTPMethodType = .get, downloadComplete:@escaping DownloadComplete = defaultDownloadComplete) {
      data(url: url, httpMethod: httpMethod) { data, response, error in
         guard let data = data, error == nil else { downloadComplete(nil, .errorGettingDataFromURL(error, response)); return }
         guard let stringValue = NSString(data: data, encoding: String.Encoding.utf8.rawValue) as String? else { downloadComplete(nil, .dataIsNotString); return }
         downloadComplete(stringValue, nil)
      }
   }
}
