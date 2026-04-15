cask "windows95" do
  # NOTE: "95" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "5.0.1"
  sha256 arm:   "93975a1de7f1268588438da922c2793c2dc2343b886d731a14d74e59c9d5367a",
         intel: "537fef7c4c30320ae826dbb735d24f4afbb7fb1c5edd36bdba6a635ff5be476d"

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
