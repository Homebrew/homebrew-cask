cask "zspace" do
  arch arm: "ARM"

  on_arm do
    version "2.4.2023071305,1689577756"
    sha256 "96d7abedabc469962c8c51fbc560121b53fccfb0a0b34bbab9cd1a225a51bc86"
  end
  on_intel do
    version "2.4.2023071305,1689566844"
    sha256 "d58c7a5fbe52afe40431fd389b40714a994282307b0a39fe5580b425f1c5b615"
  end

  url "https://update.zenithspace.net/app/APP_ZSPACE_DESKTOP_MAC#{arch}/V#{version.csv.first}/zspace/#{version.csv.second}/zspace_V#{version.csv.first}.dmg",
      verified: "update.zenithspace.net/app/"
  name "zspace"
  name "极空间"
  desc "NAS Client"
  homepage "https://www.zspace.cn/"

  livecheck do
    url "https://upgrade.zenithspace.net/upgrade_server/v2/check_upgrade?app_id=APP_ZSPACE_DESKTOP_MAC#{arch}&app_version=V0.0.0&nas_id=&plat=app&channel=zspace&skip_app_sync_upgrade=1"
    regex(%r{v?(\d+(?:\.\d+)+)/zspace/(\d+)/}i)
    strategy :json do |json, regex|
      json["data"]["download_url"]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
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
