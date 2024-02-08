cask "windows95" do
  # NOTE: "95" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "3.1.1"
  sha256 arm:   "f269b76a0f8454a163053caae3d306ca7dc38d8eedd2bc343c9f363a1a88f02f",
         intel: "574198aa286094be84a1dab896d1a5d23a7f4173ec212bddcad3c9830a36fe31"

  url "https://github.com/felixrieseberg/windows95/releases/download/v#{version}/windows95-darwin-#{arch}-#{version}.zip"
  name "Windows 95"
  desc "Electron Windows 95"
  homepage "https://github.com/felixrieseberg/windows95"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "windows95.app"

  zap trash: [
    "~/Library/Application Support/windows95",
    "~/Library/Caches/com.felixrieseberg.windows95",
    "~/Library/Caches/com.felixrieseberg.windows95.ShipIt",
    "~/Library/Preferences/com.felixrieseberg.windows95.plist",
    "~/Library/Saved Application State/com.felixrieseberg.windows95.savedState",
  ]
end
