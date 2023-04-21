cask "vallum" do
  version "4.0.14"
  sha256 "d737bf85cd7cd1c28a0a15110b3695ef1b32f012e691e98636080a966bac8251"

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
