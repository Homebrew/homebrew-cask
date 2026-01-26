cask "workspace-one-intelligent-hub" do
  version "25.11"
  sha256 :no_check

  url "https://packages.omnissa.com/wsone/WorkspaceONEIntelligentHub.pkg",
      verified: "packages.omnissa.com/wsone/"
  name "Workspace ONE Intelligent Hub"
  desc "VMware workspace"
  homepage "https://www.getwsone.com/"

  livecheck do
    url "https://docs-be.omnissa.com/api/bundle/workspace-one-intelligent-hub-for-macos-release-notesVSaaS/page/WorkspaceONEIntelligenHubmacOS-ReleaseNotes.html"
    regex(/Intelligent\s+Hub\s+v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  pkg "WorkspaceONEIntelligentHub.pkg"

  uninstall launchctl: [
              "com.airwatch.awcmd",
              "com.airwatch.mac.agent",
              "com.vmware.hub.flagd",
              "com.vmware.hub.healthd",
              "com.vmware.hub.hubupdatedaemon",
              "com.vmware.hubupdateagent",
              "com.vmware.uem.hubd",
              "com.vmware.uem.hublogd",
            ],
            pkgutil:   [
              "com.air-watch.pkg.OSXAgent",
              "com.airwatch.munki.admin",
              "com.airwatch.munki.core",
              "com.airwatch.munki.python",
            ]

  zap trash: [
    "~/Library/Application Support/AirWatchs",
    "~/Library/Caches/com.vmware.hub.mac",
    "~/Library/Preferences/com.vmware.hub.mac.plist",
    "~/Library/Saved Application State/com.vmware.hub.mac.savedState",
  ]
end
