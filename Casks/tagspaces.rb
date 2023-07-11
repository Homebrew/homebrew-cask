cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.4.2"
  sha256 arm:   "b4af00a994715f726750f271d38a8306bb43dbf4f7fbc2eaff40ac9a3d3ea37a",
         intel: "a06a9b1f8e75ccd1ae9e8ade133732a70bf89e6b4492fdb22ecb6f25ac071333"

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
