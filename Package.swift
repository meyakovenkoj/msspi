// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "msspi_c",
    platforms: [.macOS(.v12)],
    products: [.library(
                name: "msspi_c",
                type: .static,
                targets: ["msspi_c"]
              )],
    targets: [
        .target(
            name: "msspi_c",
            path: "src",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("../third_party/cprocsp/include")
            ]
        )
    ]
)
