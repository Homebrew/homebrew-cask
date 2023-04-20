cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.3.3"
  sha256 arm:   "86976ca6c7f16f547445c0fa3d54e5960a227f0767667e4c3948878010de3f52",
         intel: "7f26c0ffd66596aef15aab9e3d868f35cf02f5284c5f8563a7a3681a223275d3"

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
