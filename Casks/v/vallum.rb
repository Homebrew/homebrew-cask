cask "vallum" do
  version "4.1"
  sha256 "6ae54ce248aeb06c2efd44bdd57433d771a693395904afdec577d0741fc3fd9d"

  url "https://github.com/TheMurusTeam/Vallum/releases/download/v#{version}/vallum.#{version}.zip",
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
