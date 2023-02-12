cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.2.4"
  sha256 arm:   "2a30b8f5aa1ecf191f11486bcedb0e862ea9761fbb9dbee7764daafd7ddb1cf2",
         intel: "a08c73ca87d2374a150d7b697b12cb58b62dd00a60e367a36a192aa80d0fdd13"

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
end
