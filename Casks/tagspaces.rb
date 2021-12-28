cask "tagspaces" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.0.9"

  if Hardware::CPU.intel?
    sha256 "7d3c55804ce38d7b1f8010323dc536448898f7d9c4391fe4dace433fff78d285"
  else
    sha256 "3b7d734bfa6acea3d2f480de687270665c76464312069edd656294b647803aca"
  end

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
