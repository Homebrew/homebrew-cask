cask "xtty" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.0"
  sha256 arm:   "db41ebb19cf963361a376a9ebc52bdc64d782726e665e0f87c894809dec4e594",
         intel: "2a97759e6da43e2391fc8549f6b15b6693305cf82e79b11c087cf2f26febf30d"

  url "https://xtty.sh/downloads/xtty-#{version}-macos-#{arch}.dmg"
  name "xtty"
  desc "Native terminal that makes local, SSH, and agent work easier"
  homepage "https://xtty.sh/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: :sequoia

  app "xtty.app"

  zap trash: [
    "~/.config/xtty",
    "~/Library/Preferences/com.xujian.xtty.plist",
    "~/Library/Saved Application State/com.xujian.xtty.savedState",
  ]
end
