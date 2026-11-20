cask "vallum" do
  version "6.0.1"
  sha256 "56643067bf4be52cfa833a571bfa70a4cca807515b3439e4aaf26a7991b0269d"

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
            quit:      "it.murus.Vallum",
            pkgutil:   "it.murus.afw.Vallum"

  zap trash: [
    "~/Library/Application Scripts/RNLG254GCK.it.murus.Vallum",
    "~/Library/Group Containers/RNLG254GCK.it.murus.Vallum",
    "~/Library/Preferences/it.murus.Vallum.plist",
  ]
end
