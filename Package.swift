// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "XMediatorLevelPlayPubMaticAdapterCompatibility",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(name: "LevelPlayPubMaticAdapter", targets: ["LevelPlayPubMaticAdapterWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ironsource-mobile/LevelPlay-PubMatic-Adapter-Swift-Package.git", exact: "5.11.0"),
    ],
    targets: [
        .target(
            name: "LevelPlayPubMaticAdapterWrapper",
            dependencies: [
                .product(
                    name: "PubMaticAdapter",
                    package: "LevelPlay-PubMatic-Adapter-Swift-Package",
                    moduleAliases: ["PubMaticAdapter": "LevelPlayPubMaticAdapterTarget"]
                ),
            ]
        ),
    ]
)
