cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.0.2"
  sha256 arm:   "d9ff6577bfdfb1a586b7a16bc432198975b4cb35e3f5643a513617349fee8c46",
         intel: "eecbb0678ad1ddef25204707ee8ac30c16bf024320be2f53bba4901b6cd136b1"

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
