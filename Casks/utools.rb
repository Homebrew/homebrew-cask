cask "utools" do
  arch arm: "-arm64"

  version "3.0.2"
  sha256 arm:   "71fea8e3436b4ec3ecfe4e48cbb0cd0a95335632a8a521be5ceac70d34179b70",
         intel: "9b07b20a0c93e2ec3facdbe2b30d9eda9f62dee72eda972d124e3db6b074dd08"

  url "https://publish.u-tools.cn/version2/uTools-#{version}#{arch}.dmg",
      verified: "publish.u-tools.cn/"
  name "uTools"
  desc "Plug-in productivity tool set"
  homepage "https://u.tools/index.html"

  livecheck do
    url :homepage
    regex(/uTools[._-]v?(\d+(?:\.\d+)*)\.dmg/i)
  end

  auto_updates true

  app "uTools.app"

  zap trash: [
    "~/Library/Application Support/uTools",
    "~/Library/Logs/uTools",
    "~/Library/Preferences/org.yuanli.utools.plist",
  ]
end
