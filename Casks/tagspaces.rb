cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.4.4"
  sha256 arm:   "3cf8d16d3e30d7cf332c501741dba310556f22200f7872980255f4ed8a3d9ec7",
         intel: "18b7fc50e451cef463f3a0673c9778829a7a848cb4398e66927e8308c2f8be7c"

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
