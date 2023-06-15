cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.3.5"
  sha256 arm:   "98e6ae4dcc0f8bc62427b2c0e805a5dc14bc0a76bd6e3ef30d3f3b4cfd440ad1",
         intel: "224605efbfa9b944be1a32776a6d9d00afd9b6e7b8f8a113194508afba5f767a"

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
