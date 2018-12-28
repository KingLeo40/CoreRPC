// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "Explorer",
    dependencies: [
      .package(url: "https://github.com/IBM-Swift/Kitura.git", from: "2.6.0"),
      .package(url: "https://github.com/mxcl/PromiseKit.git", from: "6.7.1"),
      .package(url: "https://github.com/fanquake/corerpc.git", .branch("master"))
    ],
    targets: [
      .target(name: "Explorer", dependencies: [ .target(name: "Application"), "Kitura" , "CoreRPC", "PromiseKit"]),
      .target(name: "Application", dependencies: [ "Kitura"])
    ]
)
