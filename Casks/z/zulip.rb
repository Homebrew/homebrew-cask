cask "zulip" do
  arch arm: "arm64", intel: "x64"

  version "5.13.1"
  sha256 arm:   "bbbcbd5eb6ddd33a9e22a71db4263a486be813f1590e387bcb932fe672be8d5f",
         intel: "b22f154a25c492e05db4fa92b54cd817205a9c305e4decd080f5a67d9e2c1dce"

  url "https://github.com/zulip/zulip-desktop/releases/download/v#{version}/Zulip-#{version}-#{arch}.dmg"
  name "Zulip"
  desc "Desktop client for the Zulip team chat platform"
  homepage "https://zulip.com/"

  auto_updates true
  depends_on macos: :monterey

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
