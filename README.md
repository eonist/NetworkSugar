[![Reviewed by Hound](https://img.shields.io/badge/Reviewed_by-Hound-8E64B0.svg)](https://houndci.com)

# Network sugar
Sugar that makes swift networking less cumbersome

### Installation
- SPM: `.package(url: "https://github.com/eonist/NetworkSugar.git", .branch("master"))`

### Example:

```swift
let urlStr: String = "https://github.com/stylekit/img/blob/master/playlist.json?raw=true"
// Longhand:
NetworkParser.str(urlStr: urlStr) { result in
  if case .success(let string) = result {
     Swift.print("str:  \(str)")
  } else if case .failure(let error) = result {
     Swift.print("error:  \(String(describing: error))")
  }
}
// Shorthand:
NetworkParser.str(urlStr: webPath) { print(try? $0.get()) } // The JSON payload
```

### Todo: 
- Add github actions
