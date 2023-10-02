cask "vallum" do
  version "4.1.1"
  sha256 "8658ad50b41a5a2824ddc2e81320e7c8e0f5f1db9c6ad1a043ee3cbd3014ee7d"

  url "https://github.com/TheMurusTeam/Vallum/releases/download/v#{version}/vallum-#{version}.zip",
      verified: "github.com/TheMurusTeam/Vallum/"
  name "Vallum"
  desc "Application firewall"
  homepage "https://www.vallumfirewall.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :catalina"

  app "Vallum.app"

  uninstall pkgutil:   "it.murus.afw.Vallum",
            launchctl: [
              "it.murus.afw.core",
              "it.murus.afw.helper",
            ]

  zap trash: "~/Library/Preferences/it.murus.Vallum.plist"
end
