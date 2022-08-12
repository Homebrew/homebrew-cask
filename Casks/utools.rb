cask "utools" do
  arch arm: "-arm64"

  version "3.0.1"

  if Hardware::CPU.intel?
    sha256 "8a062e029b4d8222a344ed044029d474b00cc2e0ff3643f6103eb6c49735e17e"
  else
    sha256 "eb5a92efcc2d0eb634922d41337c416d0b9b4f81b50689cc71e777a5b7c5fb08"
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
