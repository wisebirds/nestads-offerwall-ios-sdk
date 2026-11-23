// swift-tools-version:5.9
import PackageDescription
let package = Package(
  name: "NestAdsOfferwallSDK",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "NestAdsOfferwallSDK",
      targets: ["NestAdsOfferwallSDKWrapper"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/1selfworld-labs/adchain-sdk-ios-release.git", .upToNextMinor(from: "1.0.54"))
  ],
  targets: [
    .binaryTarget(
      name: "NestAdsOfferwallSDK",
      url: "https://github.com/wisebirds/nestads-offerwall-ios-sdk/releases/download/1.0.1/NestAdsOfferwallSDK.xcframework.zip",
      checksum: "38aefc856105cadedafed23549d33cbd46f47d41d4882e759356ce3c6e62e3b7"
    ),
    .target(
      name: "NestAdsOfferwallSDKWrapper",
      dependencies: [
        "NestAdsOfferwallSDK",
        .product(name: "AdchainSDK", package: "adchain-sdk-ios-release")
      ],
      path: "Sources/Wrapper"
    )
  ]
)
