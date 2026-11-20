cask "zcode" do
  arch arm: "arm64", intel: "x64"

  version "3.18.2"
  sha256 arm:   "0fd13032e3c24dc172615a0c6b3e9477b0af287d87af0c973129ee15c32f7d40",
         intel: "a3a3823c02a2c64f2fcb9402efe2eb88b7b7b97cb6627f7a7e1fe1757e0e9a07"

  url "https://cdn-zcode.z.ai/zcode/electron/releases/#{version}/macos-#{arch}/ZCode-#{version}-mac-#{arch}.dmg"
  name "ZCode"
  desc "AI-assisted development environment"
  homepage "https://zcode.z.ai/en/"

  livecheck do
    url :homepage
    regex(/href=.*?ZCode[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: :ventura

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
