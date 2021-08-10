cask "webcatalog" do
  version "36.1.0"

  if Hardware::CPU.intel?
    sha256 "0756ecb4e4ead496f84a45a9c212d3496718d2535a424eef8d758504b79a9056"

    url "https://github.com/webcatalog/webcatalog-app/releases/download/v#{version}/WebCatalog-#{version}.dmg",
        verified: "github.com/webcatalog/webcatalog-app/"
  else
    sha256 "9a210190f0a3c4e7b12ce850cc10a716ce6fb1ded76fdc0a85a15399a59d56f9"

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
