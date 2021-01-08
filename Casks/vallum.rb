cask "vallum" do
  version "3.3.4"
  sha256 "3d47f43b104c65a5874bdae64995df3c2eee39d2fb640566325ae280d5ca7654"

  url "https://github.com/TheMurusTeam/Vallum/releases/download/v#{version}/vallum-#{version}.zip",
      verified: "github.com/TheMurusTeam/Vallum/"
  name "Vallum"
  homepage "https://www.vallumfirewall.com/"

  livecheck do
    url :url
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*)$/i)
  end

  pkg "Vallum.pkg"

  uninstall pkgutil:   "it.murus.afw.Vallum",
            launchctl: [
              "it.murus.afw.core",
              "it.murus.afw.helper",
            ]
end
