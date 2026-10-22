cask "virtual-desktop-streamer@beta" do
  version :latest
  sha256 :no_check

  url "https://download.vrdesktop.net/files/beta/VirtualDesktop.Streamer.Setup.pkg"
  name "Virtual Desktop Streamer Beta"
  desc "VR Virtual Desktop Streamer"
  homepage "https://www.vrdesktop.net/"

  conflicts_with cask: "virtual-desktop-streamer"
  depends_on :macos

  pkg "VirtualDesktop.Streamer.Setup.pkg"

  uninstall launchctl: [
              "com.virtualdesktop.daemon",
              "com.virtualdesktop.streamer",
            ],
            quit:      "com.virtualdesktop.streamer",
            pkgutil:   [
              "com.VirtualDesktop.AudioDriver",
              "com.VirtualDesktop.MicDriver",
              "com.virtualdesktop.streamer",
            ]

  zap trash: [
    "/Library/LaunchAgents/com.virtualdesktop.streamer.plist",
    "~/Library/Application Support/VirtualDesktop",
    "~/Library/Caches/com.virtualdesktop.streamer",
    "~/Library/Preferences/com.virtualdesktop.streamer.plist",
  ]
end
