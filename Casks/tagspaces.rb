cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.3.2"
  sha256 arm:   "a4cb21f5b986b69eff02150a174f7b1acdbb5afe3b83002344e00f9ccec3dd51",
         intel: "499df0fd2ab2a281c245b6bb60c5f0a9192a7ea56d74e14c231897d410944bcf"

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
