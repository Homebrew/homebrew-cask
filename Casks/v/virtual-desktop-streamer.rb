cask "virtual-desktop-streamer" do
  version "1.34.10"
  sha256 :no_check

  url "https://files.vrdesktop.net/files/VirtualDesktop.Streamer.Setup.pkg"
  name "Virtual Desktop Streamer"
  desc "VR Virtual Desktop Streamer"
  homepage "https://www.vrdesktop.net/"

  livecheck do
    url :url
    strategy :extract_plist
  end

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
    "~/Library/Application Support/VirtualDesktop",
    "~/Library/Caches/com.virtualdesktop.streamer",
    "~/Library/Preferences/com.virtualdesktop.streamer.plist",
  ]
end
