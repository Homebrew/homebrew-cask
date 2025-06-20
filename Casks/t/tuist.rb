cask "tuist" do
  version "4.54.2"
  sha256 "468e6a46477c9938fcab28753b804750273e5d175287f21e6475f4f79a6376e2"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
