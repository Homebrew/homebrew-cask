cask "zulip" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "5.14.3"
  sha256 arm:          "ef1cd8427f54553f828ece1db8eca2acd4f28dc41a298e5aaf33a29db49343f4",
         intel:        "84a05ad0efeb764ca663d4759c413d1da0395ef3a11fd590c30405e0e71ad998",
         x86_64_linux: "efdc0ad74bf044f05146ec1f3e6fec19b7f6a0dc7b6f36acb8794332eee184b2"

  on_macos do
    depends_on macos: :ventura

    app "Zulip.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.zulip.zulip-electron.sfl*",
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
