cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.1.3"
  sha256 arm:   "2057b41698cc2a436773f8cb17e72f4887a743c6ab79e2816c4227fd17f85239",
         intel: "9956d651c8e511eadadb556da3fbf752097984430f822099660d52f661b81bc2"

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
