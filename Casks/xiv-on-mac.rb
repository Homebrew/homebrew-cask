cask "xiv-on-mac" do
  version "3.5.5"
  sha256 "c1b8f160168d0678ea1ce8a3372fdaace888b93b7d01421ce2ddc15c6c8f5a29"

  url "https://softwareupdate.xivmac.com/sites/default/files/update_data/XIV%20on%20Mac#{version}.tar.xz"
  name "xiv-on-mac"
  desc "Wine wrapper, setup tool and launcher for FFXIV"
  homepage "https://www.xivmac.com/"

  livecheck do
    url "https://softwareupdate.xivmac.com/sites/default/files/update_data/xivonmac_appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "XIV on Mac.app"

  zap trash: [
    "~/Library/Caches/dezent.XIV-on-Mac",
    "~/Library/HTTPStorages/dezent.XIV-on-Mac",
    "~/Library/Preferences/dezent.XIV-on-Mac.plist",
    "~/Library/Application Support/XIV on Mac",
  ]
end
