cask "vallum" do
  version "5.0.2"
  sha256 "706fad5af7c2e30ec9fa4e344a6946a1d98799be38e6247f98c9f6be852eb65e"

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

  uninstall launchctl: [
              "it.murus.afw.core",
              "it.murus.afw.helper",
            ],
            pkgutil:   "it.murus.afw.Vallum"

  zap trash: "~/Library/Preferences/it.murus.Vallum.plist"
end
