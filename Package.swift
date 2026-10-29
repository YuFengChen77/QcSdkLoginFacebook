// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "QcSdkLoginFacebook", defaultLocalization: "en", platforms: [.iOS(.v17)],

    products: [
        .library(name: "QcSdkLoginFacebook", targets: ["QcSdkLoginFacebook", "QcSdkLoginFacebookSupport"])
    ],

    dependencies: [
        .package(url: "https://github.com/YuFengChen77/QcSdkCore.git", exact: "1.1.5"),
        .package(url: "https://github.com/facebook/facebook-ios-sdk.git", exact: "19.0.0")
    ],

    targets: [
        .binaryTarget(name: "QcSdkLoginFacebook", url: "https://github.com/YuFengChen77/QcSdkLoginFacebook/releases/download/1.1.2/QcSdkLoginFacebook-1.1.2.xcframework.zip", checksum: "a1953a26988b3da4b50537cd38082a0c3cf89f137e55966e0667be1749177248"),

        .target(name: "QcSdkLoginFacebookSupport", dependencies: ["QcSdkLoginFacebook", .product(name: "QcSdkCore", package: "qcsdkcore"), .product(name: "FacebookLogin", package: "facebook-ios-sdk")], path: "QcSdkLoginFacebook", sources: ["Sources"])
    ]
)
