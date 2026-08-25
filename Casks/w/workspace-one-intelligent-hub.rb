cask "workspace-one-intelligent-hub" do
  version "26.06"
  sha256 :no_check

  url "https://packages.omnissa.com/wsone/HubMacOS.pkg",
      verified: "packages.omnissa.com/wsone/"
  name "Workspace ONE Intelligent Hub"
  desc "Digital workspace hub"
  homepage "https://www.getwsone.com/"

  livecheck do
    url "https://docs-be.omnissa.com/api/bundle/workspace-one-intelligent-hub-for-macos-release-notesVSaaS/page/WorkspaceONEIntelligenHubmacOS-ReleaseNotes.html"
    regex(/Intelligent\s+Hub\s+v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: :monterey

  pkg "HubMacOS.pkg"

  uninstall launchctl: [
              "com.airwatch.airwatchd",
              "com.airwatch.awcmd",
              "com.airwatch.mac.agent",
              "com.airwatch.mac.workflowd",
              "com.ws1.hub.flagd",
              "com.ws1.hub.focusedlauncher",
              "com.ws1.hub.healthd",
              "com.ws1.hub.hubd",
              "com.ws1.hub.hublogd",
              "com.ws1.hub.hubupdatedaemon",
              "com.ws1.hub.installer.agent",
              "com.ws1.hub.installer.daemon",
              "com.ws1.hub.logvaultd",
              "com.ws1.hublogd",
              "com.ws1.hubupdateagent",
            ],
            pkgutil:   [
              "com.air-watch.pkg.OSXAgent",
              "com.airwatch.munki.admin",
              "com.airwatch.munki.core",
              "com.airwatch.munki.python",
              "com.airwatch.pkg.WF",
            ],
            delete:    [
              "/Applications/Workspace ONE Intelligent Hub.app",
              "/Library/Application Support/AirWatch",
              "/usr/local/bin/hubcli",
              "/usr/local/bin/hubhealth",
            ]

  zap trash: [
    "/Library/Logs/ws1",
    "/Library/Preferences/AirWatchManagedInstalls.plist",
    "/Library/Preferences/com.ws1.hub.agent.plist",
    "/Library/Preferences/com.ws1.pkg.wf.plist",
    "~/Library/Application Scripts/com.ws1.hub.mac.PreviewExtension",
    "~/Library/Application Scripts/com.ws1.hub.mac.SSOExtension",
    "~/Library/Application Scripts/S2ZMFGQM93.com.ws1.hub.mac",
    "~/Library/Application Support/HubExtensions",
    "~/Library/Application Support/Intelligent Hub",
    "~/Library/Caches/com.ws1.hub.HubAutoUpdater",
    "~/Library/Caches/com.ws1.hub.mac",
    "~/Library/Containers/com.ws1.hub.mac.PreviewExtension",
    "~/Library/Containers/com.ws1.hub.mac.SSOExtension",
    "~/Library/Group Containers/S2ZMFGQM93.com.ws1.hub.mac",
    "~/Library/HTTPStorages/com.ws1.hub.mac",
    "~/Library/HTTPStorages/com.ws1.hub.mac.binarycookies",
    "~/Library/Logs/IntelligentHub",
    "~/Library/Preferences/com.airwatch.mac.agent.plist",
    "~/Library/Preferences/com.ws1.hub.mac.plist",
    "~/Library/WebKit/com.ws1.hub.mac",
    "~/Library/WSOneLogs",
  ]
end
