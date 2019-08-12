# Network sugar
Sugar that makes swift networking less cumbersome

## Example:

```swift
let webPath: String = "https://www.github.com/eonist/stylekit/img/playlist.json"
NetworkParser.str(webPath: webPath) { (string: String?, error: DownloadError?) in
  if let str = string {
     Swift.print("str:  \(str)")
  } else {
     Swift.print("error:  \(String(describing: error))")
  }
}
```
