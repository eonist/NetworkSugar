# Network sugar
Sugar that makes swift networking less cumbersome

## Example:

```swift
let webPath: String = "https://github.com/stylekit/img/blob/master/playlist.json?raw=true"
//Longhand:
NetworkParser.str(webPath: webPath) { result in
  if case .success(let string) = result {
     Swift.print("str:  \(str)")
  } else if case .failure(let error) = result {
     Swift.print("error:  \(String(describing: error))")
  }
}
// Shorthand:
let str = NetworkParser.str(webPath: webPath).map()
print(str) // some json payload
```
