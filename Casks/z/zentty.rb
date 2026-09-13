cask "zentty" do
  version "0.3.2"
  sha256 "5dd34df98e2b7a91484c84714dad4c4af4e0c7403e21c59c3ef0e80c21fea721"

  url "https://github.com/dedene/zentty/releases/download/v#{version}/Zentty.dmg"
  name "Zentty"
  desc "Terminal for agent-driven development"
  homepage "https://zentty.org/"

  livecheck do
    url "https://releases.zentty.org/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Zentty.app"
  binary "#{appdir}/Zentty.app/Contents/Resources/bin/shared/zentty"

  uninstall quit: "be.zenjoy.zentty"

  zap trash: [
    "~/.config/zentty",
    "~/Library/Application Support/Zentty",
    "~/Library/Caches/be.zenjoy.zentty",
    "~/Library/HTTPStorages/be.zenjoy.zentty",
    "~/Library/Preferences/be.zenjoy.zentty.plist",
    "~/Library/Saved Application State/be.zenjoy.zentty.savedState",
  ]
end
