cask "tuist" do
  version "4.79.7"
  sha256 "69f653a2bc91ed25cb952fcc285b9016806fd89400685e1b1ef124e6d3bac62c"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
