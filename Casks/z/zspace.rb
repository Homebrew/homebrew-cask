cask "zspace" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "ARM"

  on_arm do
    version "2.8.2024071901,1721974963,071916"
    sha256 "98f01f5a20a422af2621377e0025799f587ba84a136e5392a0ac73932bd7e647"
  end
  on_intel do
    version "2.8.2024071901,1721974757,071916"
    sha256 "7094571cffc95f04fa0d432afd207a0942ab89a7bf3b8aa00ec3d3f4ca28a221"
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
