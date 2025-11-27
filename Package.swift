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
            checksum: "db857f31a04693033c61d8e202b62c5f3c7a0976e9a1f24b45053820e974f532"
        ),
    ]
)
