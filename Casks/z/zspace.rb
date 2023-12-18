cask "zspace" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "ARM"

  on_arm do
    version "2.4.2023112201,1702193814,112322"
    sha256 "cc97384a408e20b03eb66e9511b4cef39aad208cc51cebc1e48611e234afa3a6"
  end
  on_intel do
    version "2.4.2023112201,1702193614,120119"
    sha256 "a674f55d0abe7b6eb67f3bd5b53169ecb18907cc5055afa58f8fc989976156b6"
  end

  url "https://update.zenithspace.net/app/APP_ZSPACE_DESKTOP_MAC#{folder}/V#{version.csv.first}/zspace/#{version.csv.second}/zspace_mac_#{arch}_#{version.csv.first}_#{version.csv.third}.dmg",
      verified: "update.zenithspace.net/app/"
  name "zspace"
  name "极空间"
  desc "NAS Client"
  homepage "https://www.zspace.cn/"

  livecheck do
    url "https://upgrade.zenithspace.net/upgrade_server/v2/check_upgrade?app_id=APP_ZSPACE_DESKTOP_MAC#{folder}&app_version=V0.0.0&nas_id=&plat=app&channel=zspace&skip_app_sync_upgrade=1"
    regex(%r{v?(\d+(?:\.\d+)+)/zspace/(\d+)/zspace[._-]mac[._-]#{arch}[._-](?:\d+(?:\.\d+)+)[._-](\d+)\.dmg}i)
    strategy :json do |json, regex|
      json["data"]["download_url"]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  auto_updates true

  app "极空间.app"

  zap trash: [
    "~/Library/Application Support/zspace",
    "~/Library/Logs/zspace",
    "~/Library/Preferences/com.zentraedi.zspaceMacApp.plist",
  ]
end
