cask "workspace-one-intelligent-hub" do
  version "23.01.0.19"
  sha256 :no_check

  url "https://packages.vmware.com/wsone/VMwareWorkspaceONEIntelligentHub.pkg",
      verified: "packages.vmware.com/wsone/"
  name "Workspace ONE Intelligent Hub"
  desc "VMware workspace"
  homepage "https://www.getwsone.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  pkg "VMwareWorkspaceONEIntelligentHub.pkg"

  uninstall pkgutil:   [
              "com.air-watch.pkg.OSXAgent",
              "com.airwatch.munki.admin",
              "com.airwatch.munki.core",
              "com.airwatch.munki.python",
            ],
            launchctl: [
              "com.airwatch.awcmd",
              "com.airwatch.mac.agent",
              "com.vmware.hub.flagd",
              "com.vmware.hub.hubupdatedaemon",
              "com.vmware.hubupdateagent",
              "com.vmware.uem.hubd",
              "com.vmware.uem.hublogd",
            ]

  zap trash: [
    "~/Library/Application Support/AirWatchs",
    "~/Library/Caches/com.vmware.hub.mac",
    "~/Library/Preferences/com.vmware.hub.mac.plist",
    "~/Library/Saved Application State/com.vmware.hub.mac.savedState",
  ]
end
