cask "zulip" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "5.13.1"
  sha256 arm:          "bbbcbd5eb6ddd33a9e22a71db4263a486be813f1590e387bcb932fe672be8d5f",
         intel:        "b22f154a25c492e05db4fa92b54cd817205a9c305e4decd080f5a67d9e2c1dce",
         x86_64_linux: "e3021e74ff538d1553b531c113279766ffe6216e6aca8d329915d8aaa868dd85"

  on_macos do
    depends_on macos: :ventura

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
  on_linux do
    depends_on arch: :x86_64

    app_image "Zulip-#{version}-#{arch}.AppImage", target: "Zulip.AppImage"

    zap trash: [
      "~/.cache/zulip-updater",
      "~/.config/Zulip",
    ]
  end

  url "https://github.com/zulip/zulip-desktop/releases/download/v#{version}/Zulip-#{version}-#{arch}.#{os}"
  name "Zulip"
  desc "Desktop client for the Zulip team chat platform"
  homepage "https://zulip.com/"

  auto_updates true
end
