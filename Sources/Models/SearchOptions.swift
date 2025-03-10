import ArgumentParser

enum ConfigMode: String, ExpressibleByArgument {
    case debug
    case release
    case custom
    case invalid
}

struct SearchOptions: ParsableArguments {
  init() {

  }
  
  @Option(name: .shortAndLong, help: "Specify the index to use.")
  var index: String = "default"

  @Option(name: .shortAndLong, help: "Specify the config mode (debug, release, custom).")
  var config: ConfigMode = .debug

  @Flag(name: .shortAndLong, help: "Enable verbose output.")
  var verbose: Bool = false

  init(index: String = "default", config: ConfigMode = .debug, verbose: Bool = false) {
          self.index = index
          self.config = config
          self.verbose = verbose
      }
}
