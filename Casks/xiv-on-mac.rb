cask "xiv-on-mac" do
  version "4.1.2"
  sha256 "4a02b20d0b0121a87622ef1812b429956635435ee33c89144ed6031d2f7d7305"

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
