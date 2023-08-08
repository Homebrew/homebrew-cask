cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.4.6"
  sha256 arm:   "f06ad921c5bc42ab71ff30975db85713d6bfd6bb166c261b70fc34e2bb7b5332",
         intel: "ee16ed8f2ec2cf3c14d78d010e74790d7623951e6b56c10a895d1426b75e3cf6"

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
