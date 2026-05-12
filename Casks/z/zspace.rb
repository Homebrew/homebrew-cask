cask "zspace" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "ARM"

  on_arm do
    version "2.40.2026042001,1778329660,050918"
    sha256 "26cf985c5aef9bf82ed0aa509525706b1a99c53ce1d9d379581db8241f07810b"
  end
  on_intel do
    version "2.40.2026042001,1778329599,050919"
    sha256 "263a47761a41e4d517c8a9c5a6ffb4e7414a4a46bceea5421233448b3d023db3"
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
  depends_on :macos

  app "极空间.app"

  zap trash: [
    "~/Library/Application Support/zspace",
    "~/Library/Logs/zspace",
    "~/Library/Preferences/com.zentraedi.zspaceMacApp.plist",
  ]
end
