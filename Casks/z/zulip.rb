cask "zulip" do
  arch arm: "arm64", intel: "x64"

  version "5.10.4"
  sha256 arm:   "c1d6336d451e8e8b9c657be980f6bbc82ea3113caadaa60da82238ced9c645d0",
         intel: "f835454a8c2d0291bb3d1b606877a605f508246211157a1ba75aa2f50b6813ff"

  url "https://github.com/zulip/zulip-desktop/releases/download/v#{version}/Zulip-#{version}-#{arch}.dmg",
      verified: "github.com/zulip/zulip-desktop/"
  name "Zulip"
  desc "Desktop client for the Zulip team chat platform"
  homepage "https://zulipchat.com/apps/"

  auto_updates true

  app "Zulip.app"

  zap trash: [
    "~/Library/Application Support/Zulip",
    "~/Library/Caches/org.zulip.zulip-electron.helper",
    "~/Library/Logs/Zulip",
    "~/Library/Preferences/org.zulip.zulip-electron.helper.plist",
    "~/Library/Preferences/org.zulip.zulip-electron.plist",
    "~/Library/Saved Application State/org.zulip.zulip-electron.savedState",
  ]
end
