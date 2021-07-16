cask "webcatalog" do
  version "35.1.0"

  if Hardware::CPU.intel?
    sha256 "aa3f762f79094d85d262b2997cb04c3cee933fc3bcedd1652445abc4d42acdbc"

    url "https://github.com/webcatalog/webcatalog-app/releases/download/v#{version}/WebCatalog-#{version}.dmg",
        verified: "github.com/webcatalog/webcatalog-app/"
  else
    sha256 "82f467f7d0c7f997d6bd0149b4537f0b6798746432efcfb8b22e627394e1cacc"

    url "https://github.com/webcatalog/webcatalog-app/releases/download/v#{version}/WebCatalog-#{version}-arm64.dmg",
        verified: "github.com/webcatalog/webcatalog-app/"
  end

  name "WebCatalog"
  desc "Tool to run web apps like desktop apps"
  homepage "https://webcatalog.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "WebCatalog.app"

  zap trash: [
    "~/Library/Application Support/WebCatalog",
    "~/Library/Caches/com.webcatalog.jordan",
    "~/Library/Caches/com.webcatalog.jordan.ShipIt",
    "~/Library/Preferences/com.webcatalog.jordan.plist",
    "~/Library/Saved Application State/com.webcatalog.jordan.savedState",
  ]
end
