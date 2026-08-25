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
              "com.airwatch.airwatchd (com.ws1.hub.hubd)",
              "com.airwatch.awcmd",
              "com.airwatch.mac.agent",
              "com.ws1.hub.flagd",
              "com.ws1.hub.focusedlauncher",
              "com.ws1.hub.healthd",
              "com.ws1.hub.hubd",
              "com.ws1.hub.hublogd",
              "com.ws1.hub.hubupdatedaemon",
              "com.ws1.hub.installer.agent (com.ws1.hubupdateagent)",
              "com.ws1.hub.installer.daemon (com.ws1.hub.hubupdatedaemon)",
              "com.ws1.hub.logvaultd",
              "com.ws1.hublogd (com.ws1.hub.hublogd)",
              "com.ws1.hubupdateagent",
            ],
            pkgutil:   [
              "com.air-watch.pkg.OSXAgent",
              "com.airwatch.munki.admin",
              "com.airwatch.munki.core",
              "com.airwatch.munki.python",
            ],
            delete:    [
              "/Applications/Workspace ONE Intelligent Hub.app",
              "/Applications/Workspace ONE Intelligent Hub.app/Contents/Resources/AadRegistrationTool.app",
              "/Applications/Workspace ONE Intelligent Hub.app/Contents/Resources/IntelligentHubAgent.app",
              "/Applications/Workspace ONE Intelligent Hub.app/Contents/Resources/SpotlightAppStub.app",
              "/Applications/Workspace ONE Intelligent Hub.app/Contents/Resources/SSOHelper.app",
            ]
end
