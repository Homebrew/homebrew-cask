cask "xiv-on-mac" do
  version "3.5.7"
  sha256 "ba55ce94ba0f29c19b151a580790d22c0b130aea05988817e2b21f0eef6082f7"

  url "https://softwareupdate.xivmac.com/sites/default/files/update_data/XIV%20on%20Mac#{version}.tar.xz"
  name "xiv-on-mac"
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
    "~/Library/Caches/dezent.XIV-on-Mac",
    "~/Library/HTTPStorages/dezent.XIV-on-Mac",
    "~/Library/Preferences/dezent.XIV-on-Mac.plist",
    "~/Library/Application Support/XIV on Mac",
  ]
end
