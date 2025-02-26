// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let arc_name: String = "TelematicsSDK-7.0.0.zip"

let package = Package(
    name: "TelematicsSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "TelematicsSDK",
            targets: ["TelematicsSDK"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
                    name: "TelematicsSDK",
                    url: "https://s3.us-east-2.amazonaws.com/ios.telematics.sdk.production/Releases/\(arc_name)",
                    checksum: "06bf2efbe100cd17e3b21c18e8f79be114c7670136e9327f54998fa1a92874d1"
        )
    ]
)
