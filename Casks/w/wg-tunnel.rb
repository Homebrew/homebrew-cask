cask "wg-tunnel" do
  version "2.3.0"
  sha256 "318fed987c93a085a9569d5245a5d6cb9ca067ec0b6061f73d0fd5ede17a5599"

  url "https://github.com/wgtunnel/desktop/releases/download/v#{version}/wgtunnel-#{version}-mac-arm64.dmg"
  name "WG Tunnel"
  desc "Advanced, open-source client for WireGuard and AmneziaWG"
  homepage "https://wgtunnel.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "WG Tunnel.app"

  uninstall quit: "com.wgtunnel.wgtunnel"

  zap trash: [
    "~/Library/Application Support/WGTunnel",
    "~/Library/Caches/WGTunnel",
    "~/Library/Preferences/com.wgtunnel.wgtunnel.plist",
    "~/Library/Saved Application State/com.wgtunnel.wgtunnel.savedState",
  ]

  caveats <<~EOS
    WG Tunnel installs a privileged background service (a LaunchDaemon) the first time you
    launch the app, which needs a one-time approval in System Settings -> General -> Login
    Items & Extensions.

    Before uninstalling, use Settings -> General -> Remove background service in the app
    itself, then run `brew uninstall --zap wgtunnel`. Skipping that step leaves the daemon
    running until you reboot (macOS has no hook that automatically uninstalls the daemon when 
    the app bundle is removed).
  EOS
end
