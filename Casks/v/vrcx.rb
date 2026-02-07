cask "vrcx" do
  arch arm: "arm64", intel: "x64"

  version "2026.01.28"
  sha256 arm:   "5ea62d159fe49bbccdbd33ddbd13d04abc68e0de5cf4600c14467764ccb52a60",
         intel: "586ca290ac8b2991ab8f093e55d352614ccce6d0543eec3fae935dec185adc4d"

  url "https://github.com/vrcx-team/VRCX/releases/download/v#{version}/VRCX_#{version}_#{arch}.dmg",
      verified: "github.com/vrcx-team/VRCX/"
  name "VRCX"
  desc "VRChat companion app"
  homepage "https://vrcx.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "VRCX.app"

  zap trash: [
    "~/Library/Application Support/VRCX",
    "~/Library/Preferences/app.vrcx.plist",
    "~/Library/Saved Application State/app.vrcx.savedState",
  ]
end
