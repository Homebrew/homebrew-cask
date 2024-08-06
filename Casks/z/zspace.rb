cask "zspace" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "ARM"

  on_arm do
    version "2.9.2024073001,1722929385,073117"
    sha256 "7241e7c508332bddb221822c5517c84d54d3bfc3e0e192f99849bca38bd4709e"
  end
  on_intel do
    version "2.9.2024073001,1722929262,073122"
    sha256 "b48516682d18b7dd22357c1c1355160a6d66632d205aa32cc5ced2c01319f73e"
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
      json.dig("data", "download_url")&.scan(regex)&.map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
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
