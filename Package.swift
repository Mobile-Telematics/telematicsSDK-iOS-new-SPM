// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let arc_name: String = "TelematicsSDK-7.0.1.zip"

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
                    checksum: "dd23fef4629a617ac76811e8c35195cab983bb49d24a6241d700ad84deac5861"
        )
    ]
)
