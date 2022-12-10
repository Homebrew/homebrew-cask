cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.1.2"
  sha256 arm:   "a40db4b113e9a7cc68f29ce815714051cd66dab0c40f71f638a1f7cfc540a4c6",
         intel: "4298493ce3bb127adf3737ccdc39606880fbad44461b546284e9d690d66306a2"

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
