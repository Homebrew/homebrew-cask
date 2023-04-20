cask "yousician" do
  version "2.11.43.0"
  sha256 :no_check

  url "https://public.yousician.com/Builds/Yousician.dmg"
  name "Yousician"
  desc "Musical instrument learning tool"
  homepage "https://yousician.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Yousician Launcher.app"

  zap trash: [
    "~/Library/Application Support/unity.Yousician.Yousician",
    "~/Library/Caches/com.yousician.launcher",
    "~/Library/HTTPStorages/com.yousician.launcher",
    "~/Library/HTTPStorages/com.yousician.launcher.binarycookies",
    "~/Library/HTTPStorages/unity.Yousician.Yousician",
    "~/Library/Logs/Yousician",
    "~/Library/Preferences/unity.Yousician.Yousician.plist",
    "~/Library/Saved Application State/com.yousician.launcher.savedState",
  ]
end
