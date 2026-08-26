cask "zcode" do
  arch arm: "arm64", intel: "x64"

  version "3.9.2"
  sha256 arm:   "f23269a9ed81d56dc54015bac5c3025d15d7927d73085c81f9d697f40968d0a4",
         intel: "3270abb9ac650f52727a7d0bde8b05204f0a7224e21c4fa2099ec116e7ac862d"

  url "https://cdn-zcode.z.ai/zcode/electron/releases/#{version}/macos-#{arch}/ZCode-#{version}-mac-#{arch}.dmg"
  name "ZCode"
  desc "AI-assisted development environment"
  homepage "https://zcode.z.ai/en/"

  livecheck do
    url :homepage
    regex(/href=.*?ZCode[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "ZCode.app"

  uninstall quit: "dev.zcode.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.zcode.app.sfl*",
        "~/Library/Application Support/ZCode",
        "~/Library/Caches/@zcodedesktop-updater",
        "~/Library/Preferences/dev.zcode.app.plist",
        "~/Library/Services/Open in ZCode.workflow",
      ],
      rmdir: "~/.zcode"
end
