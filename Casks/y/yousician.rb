cask "yousician" do
  version "2.11.43"
  sha256 :no_check

  url "https://public.yousician.com/Builds/Yousician.dmg"
  name "Yousician"
  desc "Musical instrument learning tool"
  homepage "https://yousician.com/"

  livecheck do
    url "https://api.yousician.com/launcher/OSX/check_version/launcher/current/Yousician-launcher/0"
    regex(/Yousician[._-]launcher[._-]OSX[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json["remote_version"]&.match(regex) { |match| match[1] }
    end
  end

  depends_on macos: ">= :high_sierra"

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
    "~/Library/Saved Application State/unity.Yousician.Yousician.savedState",
  ]
end
