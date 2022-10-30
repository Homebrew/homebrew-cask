cask "workspace-one-intelligent-hub" do
  version "22.10.0.7"
  sha256 :no_check

  url "https://packages.vmware.com/wsone/VMwareWorkspaceONEIntelligentHub.pkg",
      verified: "packages.vmware.com/wsone/"
  name "workspace-one-intelligent-hub"
  desc "VMware workspace"
  homepage "https://www.getwsone.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "VMwareWorkspaceONEIntelligentHub.pkg"

  uninstall pkgutil: ["com.air-watch.pkg.OSXAgent",
                      "com.airwatch.munki.python",
                      "com.airwatch.munki.admin",
                      "com.airwatch.munki.core"]

  zap trash: [
    "~/Library/Application Support/AirWatchs",
    "~/Library/Caches/com.vmware.hub.mac",
    "~/Library/Preferences/com.vmware.hub.mac.plist",
    "~/Library/Saved Application State/com.vmware.hub.mac.savedState",
  ]
end
