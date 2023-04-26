cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.3.4"
  sha256 arm:   "8e6eee3a179ad1347069c1848b6bcce1ed2e7cde66eca47666f8a88e8f498c7d",
         intel: "c783c418fe65f49c3b5c03f1c1053ef7adea9644ce8efb4f892a98ad1c094d6b"

  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{arch}-#{version}.dmg",
      verified: "github.com/tagspaces/tagspaces/"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "TagSpaces.app"

  zap trash: [
    "~/Library/Application Support/TagSpaces",
    "~/Library/Preferences/org.tagspaces.desktopapp.plist",
    "~/Library/Saved Application State/org.tagspaces.desktopapp.savedState",
  ]
end
