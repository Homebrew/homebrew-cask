cask "zcode" do
  arch arm: "arm64", intel: "x64"

  version "3.7.5"
  sha256 arm:   "5f455df104e73d2197c88caf579ab7d84b46b0d3b94d099ed2236e2a926edd23",
         intel: "82464156e7e2cbd107f1bf06ad136d954b4d545062003da15c90099fdbd160a8"

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
