cask "windows95" do
  # NOTE: "95" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "5.0.0"
  sha256 arm:   "9d2e97975d5b3c4c0659638b47b7cbeb241dddb26e7ecc73d678522bcc8a609b",
         intel: "9d87b652a15d8ffa26912b55beaf59b38d248839b1284893b6e485d84ed34115"

  url "https://github.com/felixrieseberg/windows95/releases/download/v#{version}/windows95-darwin-#{arch}-#{version}.zip"
  name "Windows 95"
  desc "Electron Windows 95"
  homepage "https://github.com/felixrieseberg/windows95"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "windows95.app"

  zap trash: [
    "~/Library/Application Support/windows95",
    "~/Library/Caches/com.felixrieseberg.windows95",
    "~/Library/Caches/com.felixrieseberg.windows95.ShipIt",
    "~/Library/Preferences/com.felixrieseberg.windows95.plist",
    "~/Library/Saved Application State/com.felixrieseberg.windows95.savedState",
  ]
end
