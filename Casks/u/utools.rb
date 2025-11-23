cask "utools" do
  arch arm: "-arm64"

  version "7.3.2"
  sha256 arm:   "0e0f26a731c9d66184b1c67596f4e431d16aabe7b0ae9c0f5fb8d57b53894593",
         intel: "0fd0c0ccdd4fe195676ea3cf32103bddba0fdc8fda2307de3c3f94f492405631"

  url "https://open.u-tools.cn/download/uTools-#{version}#{arch}.dmg"
  name "uTools"
  desc "Plug-in productivity tool set"
  homepage "https://www.u-tools.cn/"

  livecheck do
    url "https://www.u-tools.cn/download/"
    regex(/uTools[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "uTools.app"

  zap trash: [
    "~/Library/Application Support/uTools",
    "~/Library/Logs/uTools",
    "~/Library/Preferences/org.yuanli.utools.plist",
  ]
end
