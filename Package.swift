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
      checksum: "47130b3ea2033bdf5d8a1ee3ef78dd72844d70e9812af3859ffc0e9bb63cd168"
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
