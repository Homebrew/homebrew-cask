cask "webcatalog" do
  version "33.1.1"

  if Hardware::CPU.intel?
    sha256 "5843f503b5e2ee4b9e2200bb6494f2ef00d3a0913ed37c4e2bea00eef0049763"

    url "https://github.com/webcatalog/webcatalog-app/releases/download/v#{version}/WebCatalog-#{version}.dmg",
        verified: "github.com/webcatalog/webcatalog-app/"
  else
    sha256 "b5cdbb95b1def7bd3a9844b57061a95c1f2026469ea527171bb2df433310786a"

    url "https://github.com/webcatalog/webcatalog-app/releases/download/v#{version}/WebCatalog-#{version}-arm64.dmg",
        verified: "github.com/webcatalog/webcatalog-app/"
  end

  name "WebCatalog"
  desc "Tool to run web apps like desktop apps"
  homepage "https://webcatalog.app/"

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
