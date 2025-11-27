// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterVungle",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterVungle",
            targets: ["AdiscopeMediaMaxAdapterVungleTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.4.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.5.2"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterVungleTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterVungle"),
                .target(name: "AdiscopeMediaMaxAdapterVungleMediationAdapter"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterVungle",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterVungle.zip",
            checksum: "c64dd3e9e70051b0e62d162907cf38beee4c25762c16a0daed366961b300a492"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterVungleMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AppLovinMediationVungleAdapter.xcframework.zip",
            checksum: "67d0931047c54329b4b7a0c22bae90453f9fee200455c179f78cf7387d0c962b"
        ),
    ]
)
