cask "xiv-on-mac" do
  version "4.11"
  sha256 "219fd686c4d78d12b8bce7ecab426a5bee96b2fcadbacdd97d86e254ae828cb8"

  url "https://softwareupdate.xivmac.com/sites/default/files/update_data/XIV%20on%20Mac#{version}.tar.xz"
  name "XIV on Mac"
  desc "Wine wrapper, setup tool and launcher for FFXIV"
  homepage "https://www.xivmac.com/"

  livecheck do
    url "https://softwareupdate.xivmac.com/sites/default/files/update_data/xivonmac_appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "XIV on Mac.app"

  zap trash: [
    "~/Library/Application Support/XIV on Mac",
    "~/Library/Caches/dezent.XIV-on-Mac",
    "~/Library/HTTPStorages/dezent.XIV-on-Mac",
    "~/Library/Preferences/dezent.XIV-on-Mac.plist",
  ]
end
