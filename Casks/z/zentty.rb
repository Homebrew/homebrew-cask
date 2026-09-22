cask "zentty" do
  version "0.3.4"
  sha256 "04f026952301962db6ecf419b76b0a0023022764a97b7ce6389470fdadd06e68"

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
