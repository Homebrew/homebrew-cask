cask "vallum" do
  version "4.0.1"
  sha256 "fa93c4f4d69853634e8f178a77696b2407b2e30bcebee3a7142b92fdd714d85e"

  url "https://github.com/TheMurusTeam/Vallum/releases/download/v#{version}/vallum-#{version}.zip",
      verified: "github.com/TheMurusTeam/Vallum/"
  name "Vallum"
  homepage "https://www.vallumfirewall.com/"

  livecheck do
    url :url
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*)$/i)
  end

  app "Vallum.app"

  uninstall pkgutil:   "it.murus.afw.Vallum",
            launchctl: [
              "it.murus.afw.core",
              "it.murus.afw.helper",
            ]
end
