cask "windows95" do
  # NOTE: "95" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "4.0.0"
  sha256 arm:   "c232022c72560cdf8fd11175de17bf974e9a9ee9d3e4fe68a7aa9a6e4d2c6e34",
         intel: "07ee85ee8306b6f4af593e907c61ec5c622e34a584a63753a6bd65d8f1f68e29"

  url "https://github.com/felixrieseberg/windows95/releases/download/v#{version}/windows95-darwin-#{arch}-#{version}.zip"
  name "Windows 95"
  desc "Electron Windows 95"
  homepage "https://github.com/felixrieseberg/windows95"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "windows95.app"

  zap trash: [
    "~/Library/Application Support/windows95",
    "~/Library/Caches/com.felixrieseberg.windows95",
    "~/Library/Caches/com.felixrieseberg.windows95.ShipIt",
    "~/Library/Preferences/com.felixrieseberg.windows95.plist",
    "~/Library/Saved Application State/com.felixrieseberg.windows95.savedState",
  ]
end
