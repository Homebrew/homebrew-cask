cask "vallum" do
  version "6.0"
  sha256 "7393e5e46c41bc432f85e6b08746dace362776c32f058c2961d63674f3a7824e"

  url "https://github.com/TheMurusTeam/Vallum/releases/download/v#{version}/vallum-#{version}.zip"
  name "Vallum"
  desc "Application firewall"
  homepage "https://www.vallumfirewall.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :sonoma

  app "Vallum.app"

  uninstall launchctl: [
              "it.murus.afw.core",
              "it.murus.afw.helper",
            ],
            pkgutil:   "it.murus.afw.Vallum"

  zap trash: "~/Library/Preferences/it.murus.Vallum.plist"
end
