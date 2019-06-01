import Foundation

/**
 * String
 */
extension NetworkParser {
   /**
    * Return string for WebPath
    * ## Examples:
    * NetworkParser.str(webPath: webPath) //(See defaultDownloadComplete)
    * Fixme: ⚠️️ rename webPath to urlStr ?
    */
   public static func str(urlStr: String, onComplete:@escaping DownloadComplete = defaultDownloadComplete) {
      guard let url = URL(string: urlStr) else { onComplete(nil, .invalideWebPath); return }
      str(url: url, downloadComplete: onComplete)
   }
   /**
    * Return string for URL
    * ## Examples:
    * NetworkParser.str(url: url)
    */
   public static func str(url: URL, downloadComplete:@escaping DownloadComplete = defaultDownloadComplete) {
      data(url: url) { data, response, error in
         guard let data = data, error == nil else { downloadComplete(nil, .errorGettingDataFromURL(error, response)); return }
         //Swift.print(response?.suggestedFilename ?? url.lastPathComponent)
         guard let stringValue = NSString(data: data, encoding: String.Encoding.utf8.rawValue) as String? else { downloadComplete(nil, .dataIsNotString); return }
         downloadComplete(stringValue, nil)
      }
   }
}
