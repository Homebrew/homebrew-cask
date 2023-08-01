cask "zspace" do
  arch arm: "MACARM", intel: "MAC"

  on_arm do
    version "2.4.2023071305"
    sha256 "96d7abedabc469962c8c51fbc560121b53fccfb0a0b34bbab9cd1a225a51bc86"

    url "https://update.zenithspace.net/app/APP_ZSPACE_DESKTOP_#{arch}/V#{version}/zspace/1689577756/zspace_V#{version}.dmg", verified: "update.zenithspace.net/app/"
  end
  on_intel do
    version "2.4.2023071305"
    sha256 "d58c7a5fbe52afe40431fd389b40714a994282307b0a39fe5580b425f1c5b615"

    url "https://update.zenithspace.net/app/APP_ZSPACE_DESKTOP_#{arch}/V#{version}/zspace/1689566844/zspace_V#{version}.dmg", verified: "update.zenithspace.net/app/"
  end

  name "zspace"
  name "极空间"
  desc "NAS Client"
  homepage "https://www.zspace.cn/"

  livecheck do
    url "https://upgrade.zenithspace.net/upgrade_server/v2/check_upgrade?app_id=APP_ZSPACE_DESKTOP_#{arch}&app_version=V0.0.0&nas_id=&plat=app&channel=zspace&skip_app_sync_upgrade=1"
    regex(/^V?(\d+(?:\.\d+)+)$/i)
    strategy :json do |json, regex|
      match = json["data"]["app_version"]&.match(regex)
      next if match.blank?

      match[1]
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
