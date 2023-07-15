cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.4.3"
  sha256 arm:   "6465a231b4b98fe93ae478a4e35cdc1cdb2c376614e8baa5a02f5d67fb4c5386",
         intel: "3b5eb23abc5e7aa9d887d4a4ff872fba5c2239d0f9b26214bd14d259df3a615c"

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
