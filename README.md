# Network sugar
Sugar that makes swift networking less cumbersome

## Example:

```swift
let urlStr: String = "https://github.com/stylekit/img/blob/master/playlist.json?raw=true"
//Longhand:
NetworkParser.str(urlStr: urlStr) { result in
  if case .success(let string) = result {
     Swift.print("str:  \(str)")
  } else if case .failure(let error) = result {
     Swift.print("error:  \(String(describing: error))")
  }
}
// Shorthand:
let str = NetworkParser.str(urlStr: urlStr).get() // you can use .map() instead of get as well
print(str) // the json payload
```
