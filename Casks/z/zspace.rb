cask "zspace" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "ARM"

  on_arm do
    version "2.12.2024112201,1733210216,112215"
    sha256 "5c20b2a2a77e47784f8b9de368ba4e58979d8b3efb15d22cd8f45be17d24ced0"
  end
  on_intel do
    version "2.12.2024112201,1733210268,112218"
    sha256 "c92a9c75593e7631595ae206ff48bf3fbb220eb67050332c31453d09d165cd94"
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
