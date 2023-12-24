cask "utterly" do
  version "0.9.0-SNAPSHOT-140e1bc"
  sha256 :no_check

  url "https://www.utterly.app/Utterly.pkg"
  name "Utterly"
  desc "Remove background noise during your calls in any audio or video conferencing app"
  homepage "https://www.utterly.app/"

  livecheck do
    skip "No version information available"
  end

  pkg "Utterly.pkg"

  uninstall launchctl: "app.utterly.Utterly.XPCHelper",
            quit:      "app.utterly.Utterly.App",
            pkgutil:   "app.utterly.Utterly",
            delete:    [
              "/Applications/Utterly.app",
              "/Library/Application Support/Utterly/UtterlyXPCHelper.xpc",
              "/Library/Audio/Plug-Ins/HAL/Utterly Device.driver",
              "/Library/LaunchDaemons/app.utterly.Utterly.XPCHelper.plist",
              "/usr/local/libexec/UtterlyXPCHelper.xpc",
            ]

  zap trash: "~/Library/Preferences/app.utterly.Utterly.App.plist"
end
