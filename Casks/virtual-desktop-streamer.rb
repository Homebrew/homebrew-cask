cask "virtual-desktop-streamer" do
  version "1.25.10"
  sha256 :no_check

  url "https://download.vrdesktop.net/files/VirtualDesktop.Streamer.Setup.dmg"
  name "Virtual Desktop Streamer"
  desc "VR Virtual Desktop Streamer"
  homepage "https://www.vrdesktop.net/"

  livecheck do
    skip "No version information available"
  end

  pkg "Virtual Desktop.pkg"

  postflight do
    # postinstall launches the app
    retries ||= 3
    ohai "The Virtual Desktop package postinstall script launches the Streamer app" unless retries < 3
    ohai "Attempting to close the Streamer app to avoid unwanted user intervention" unless retries < 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/Virtual Desktop Streamer.app"]

  rescue RuntimeError
    sleep 1
    retry unless (retries -= 1).zero?
    opoo "Unable to forcibly close Virtual Desktop Streamer"
  end

  uninstall quit:      "com.virtualDesktopInc.Mac.Streamer",
            pkgutil:   [
              "com.VirtualDesktop.AudioDriver",
              "com.VirtualDesktop.Libs",
              "com.VirtualDesktop.MicDriver",
              "com.VirtualDesktop.VirtualDesktop",
              "com.VirtualDesktop.VirtualDesktopUpdater",
            ],
            launchctl: [
              "com.VirtualDesktop.autoinstall",
              "com.VirtualDesktop.launch",
              "com.VirtualDesktop.uninstall",
            ],
            delete:    "/usr/local/bin/virtualdesktop/"

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
