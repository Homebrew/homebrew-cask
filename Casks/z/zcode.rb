cask "zcode" do
  arch arm: "arm64", intel: "x64"

  version "3.14.1"
  sha256 arm:   "f2ae7aba49681a65745657f9d95ddd8fd9dfa2db3e6e3bae91b3fecec68a99b6",
         intel: "f65b6b6e97a4098bf214460bb05a5fc00107c678e8b9ee40b746fe9923001219"

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
