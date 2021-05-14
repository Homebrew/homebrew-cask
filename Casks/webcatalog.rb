cask "webcatalog" do
  version "32.2.1"

  if Hardware::CPU.intel?
    sha256 "72e6ecca21cbf5ac61d84c0fda3a3b3ca6d0573383dba501777fe188d53d541e"

    url "https://github.com/webcatalog/webcatalog-app/releases/download/v#{version}/WebCatalog-#{version}.dmg",
        verified: "github.com/webcatalog/webcatalog-app/"
  else
    sha256 "9c0cc01adb32659bc0e6793f4af586e3b5ccfaeaa271bed7e9e1df39ef06c784"

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
