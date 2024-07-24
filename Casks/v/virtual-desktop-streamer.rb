cask "virtual-desktop-streamer" do
  version "1.32.9"
  sha256 "67e2b7706697e1023d7e69c34ed78aa594296a9b9f8e645833bdd810b14889c5"

  url "https://github.com/guygodin/VirtualDesktop/releases/download/v#{version}/VirtualDesktop.Streamer.Setup.dmg",
      verified: "github.com/guygodin/VirtualDesktop/"
  name "Virtual Desktop Streamer"
  desc "VR Virtual Desktop Streamer"
  homepage "https://www.vrdesktop.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "Virtual Desktop.pkg"

  postflight do
    # postinstall launches the app
    retries ||= 3
    ohai "The Virtual Desktop package postinstall script launches the Streamer app" if retries >= 3
    ohai "Attempting to close the Streamer app to avoid unwanted user intervention" if retries >= 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/Virtual Desktop Streamer.app"]
  rescue RuntimeError
    sleep 1
    retry unless (retries -= 1).zero?
    opoo "Unable to forcibly close Virtual Desktop Streamer"
  end

  uninstall launchctl: [
              "com.VirtualDesktop.autoinstall",
              "com.VirtualDesktop.launch",
              "com.VirtualDesktop.uninstall",
            ],
            quit:      "com.virtualDesktopInc.Mac.Streamer",
            pkgutil:   [
              "com.VirtualDesktop.AudioDriver",
              "com.VirtualDesktop.Libs",
              "com.VirtualDesktop.MicDriver",
              "com.VirtualDesktop.VirtualDesktop",
              "com.VirtualDesktop.VirtualDesktopUpdater",
            ],
            delete:    [
              "/Applications/Virtual Desktop Streamer.app",
              "/Applications/Virtual Desktop Updater.app",
              "/usr/local/bin/virtualdesktop/",
            ]

  zap trash: [
    "/tmp/.vdready",
    "/tmp/.vdrequestclean",
    "/tmp/.vdupdatedetail",
    "~/Library/Caches/com.virtualDesktopInc.Mac.Streamer",
    "~/Library/HTTPStorages/com.virtualDesktopInc.Mac.Streamer",
    "~/Library/Preferences/com.virtualDesktopInc.Mac.Streamer.plist",
    "~/Library/Saved Application State/com.virtualDesktopInc.Mac.Streamer.savedState",
  ]
end
