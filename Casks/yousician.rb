cask "yousician" do
  version :latest
  sha256 :no_check

  url "https://public.yousician.com/Builds/Yousician.dmg"
  name "Yousician"
  desc "Is a fun way to learn the guitar, piano, bass, ukulele or singing"
  homepage "https://yousician.com/"

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
