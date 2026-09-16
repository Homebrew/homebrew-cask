cask "xiv-on-mac" do
  version "5.5.1"
  sha256 "b478b4c8865e773f82803a5aad9bbb67e179943f0da216a3d45b9193c218cfaa"

  url "https://softwareupdate.xivmac.com/sites/default/files/update_data/XIV%20on%20Mac#{version}.tar.xz"
  name "XIV on Mac"
  desc "Wine wrapper, setup tool and launcher for FFXIV"
  homepage "https://www.xivmac.com/"

  livecheck do
    url "https://softwareupdate.xivmac.com/sites/default/files/update_data/xivonmac_appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "XIV on Mac.app"

  zap trash: [
    "~/Library/Application Support/XIV on Mac",
    "~/Library/Caches/dezent.XIV-on-Mac",
    "~/Library/HTTPStorages/dezent.XIV-on-Mac",
    "~/Library/Preferences/dezent.XIV-on-Mac.plist",
  ]
end
