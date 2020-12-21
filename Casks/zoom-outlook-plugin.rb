cask "zoom-outlook-plugin" do
  version "5.4.59712,2020.12.17"
  sha256 :no_check

  url "https://zoom.us/client/latest/ZoomMacOutlookPlugin.pkg"
  name "Zoom.us Outlook Plugin"
  desc "Outlook Plugin for Zoom.us"
  homepage "https://www.zoom.us/"

  depends_on macos: "<= :mojave"

  pkg "ZoomMacOutlookPlugin.pkg"

  uninstall script:    {
    executable: "/Applications/ZoomOutlookPlugin/Uninstall.app/Contents/MacOS/Uninstall",
    sudo:       true,
  },
            pkgutil:   "ZoomMacOutlookPlugin.pkg",
            launchctl: "us.zoom.pluginagent",
            quit:      "us.zoom.pluginagent"
end
