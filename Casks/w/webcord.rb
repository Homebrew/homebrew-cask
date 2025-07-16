cask "webcord" do
  version "4.11.0"

  on_arm do
    sha256 "5dfc316ccf887e6767e5dceb3ce5b6e22700370e15b693da21b54357be5a8a93"

    url "https://github.com/SpacingBat3/WebCord/releases/download/v#{version}/WebCord-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "2712d8016c1eaf4110067ee6cb6a3d41d6eb7aa59f300696f4c322184c903cd6"

    url "https://github.com/SpacingBat3/WebCord/releases/download/v#{version}/WebCord-#{version}-x64.dmg"
  end

  name "WebCord"
  desc "Discord client implemented without Discord API"
  homepage "https://github.com/SpacingBat3/WebCord"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "WebCord.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/WebCord.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/WebCord",
    "~/Library/Preferences/com.electron.webcord.plist",
    "~/Library/Saved Application State/com.electron.webcord.savedState",
  ]
end
