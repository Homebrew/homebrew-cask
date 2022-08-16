cask "utools" do
  arch arm: "-arm64"

  version "3.0.2"

  on_intel do
    sha256 "8a062e029b4d8222a344ed044029d474b00cc2e0ff3643f6103eb6c49735e17e"
  end
  on_arm do
    sha256 "71fea8e3436b4ec3ecfe4e48cbb0cd0a95335632a8a521be5ceac70d34179b70"
  end

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
