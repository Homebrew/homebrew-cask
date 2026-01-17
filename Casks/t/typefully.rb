cask "typefully" do
  arch arm: "arm64", intel: "x64"

  version "1.3.1"
  sha256 arm:   "607d2a6b83a052813776b47818441b34de1083ac2a2a9873e48a60c829bf8e8a",
         intel: "e546dab98a27d33a1b3978f3f5ff843a5592d5e343ba3b50d855704fbfe68824"

  url "https://download.todesktop.com/2304250k2av6yux/Typefully%20#{version}-#{arch}-mac.zip",
      verified: "download.todesktop.com/2304250k2av6yux/"
  name "Typefully"
  desc "Tool for writing and publishing tweets"
  homepage "https://typefully.com/"

  livecheck do
    url "https://download.todesktop.com/2304250k2av6yux/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Typefully.app"

  uninstall quit: "com.todesktop.2304250k2av6yux"

  zap trash: [
    "~/Library/Application Support/Typefully",
    "~/Library/Logs/Typefully",
    "~/Library/Preferences/com.todesktop.2304250k2av6yux.plist",
  ]
end
