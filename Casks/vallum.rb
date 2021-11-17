cask "vallum" do
  version "4.0.7"
  sha256 "4cec860377cf19eae29b8a963678186968877dceec2837667794f90d23c6cab7"

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
