cask "zulip" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "5.13.2"
  sha256 arm:          "1091a2a79be475177e3008e5089f0b546f8b51266e497c840fcb3e8488a5dba2",
         intel:        "36ac2cea4cf18b5c13dfe1ec22157ef5cc39ef18e0431f20ebc1fcdcdf124a36",
         x86_64_linux: "fb3fb3d21af46281179dc00ac5142d6f5a65d3a73d0af35855e16068d30d88a0"

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
