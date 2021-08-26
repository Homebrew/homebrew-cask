cask "webcatalog" do
  version "36.3.1"

  if Hardware::CPU.intel?
    sha256 "a340c5ffd82672b73b08bab32c8d5f89a3acd1c43ba1626e3b47508096753113"

    url "https://github.com/webcatalog/webcatalog-app/releases/download/v#{version}/WebCatalog-#{version}.dmg",
        verified: "github.com/webcatalog/webcatalog-app/"
  else
    sha256 "44e4f5573423418b6fb6afceb176e2437296e1db780611be4dca907156130e75"

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
