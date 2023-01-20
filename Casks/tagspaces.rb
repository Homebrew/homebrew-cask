cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.1.4"
  sha256 arm:   "766e6a9ee438cabb8ead63425f4a67460bdd05521c30a851487e10bfbb8cb628",
         intel: "c8ed56e0a98aa9ba8eb91b05748d96d90dfd1f44a3388f8d32a7171a3616baf3"

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
