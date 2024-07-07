cask "utterly" do
  version "1.5.0-SNAPSHOT-c43cb8d"
  sha256 :no_check

  url "https://www.utterly.app/Utterly-Elevate.pkg"
  name "Utterly"
  desc "Remove background noise during your calls in any audio or video conferencing app"
  homepage "https://www.utterly.app/"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :catalina"

  pkg "Utterly-Elevate.pkg"

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

  caveats do
    requires_rosetta
  end
end
