// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "msspi",
    platforms: [.macOS(.v12), .iOS(.v12)],
    products: [.library(
	name: "msspi_c",
	type: .static,
	targets: ["msspi_c"]
    )],
    targets: [
	.target(
	    name: "msspi_c",
	    path: "src",
	    publicHeadersPath: "include",
	    cSettings: [
		.headerSearchPath("../third_party/cprocsp/include")
	    ]
	)
    ]
)
