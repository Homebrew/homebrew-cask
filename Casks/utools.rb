cask "utools" do
  version "1.3.5"
  sha256 "49a085440c9a38faabfb17b148f530ab8abf7f946599681d3523f2f94d07cc5d"

  url "https://res.u-tools.cn/currentversion/uTools-#{version}.dmg",
      verified: "res.u-tools.cn/"
  name "uTools"
  desc "Plug-in productivity tool set"
  homepage "https://u.tools/index.html"

  livecheck do
    url "https://res.u-tools.cn/currentversion/public-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "uTools.app"

  zap trash: [
    "~/Library/Application Support/uTools",
    "~/Library/Logs/uTools",
  ]
end
