cask "vallum" do
  version "4.0.9"
  sha256 "6fd969d3e211e961227861570d191eba6bc7ffebcf21d55d7ca1cd4c551f4395"

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
end
