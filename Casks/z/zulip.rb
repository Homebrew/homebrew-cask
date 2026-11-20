cask "zulip" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "5.14.2"
  sha256 arm:          "e54a5e6bcd0150914cf2a2942ccf8ac8df58aa1102039dc66d47af79c6d28776",
         intel:        "08bd851d7974f6c45965eed0204e16cf362d6ec5622bf96fd6fe1bcdf3e80884",
         x86_64_linux: "7f954670236b55a48abb96b42a201df6a64d8bb2df38183c862d6c016d22473b"

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
