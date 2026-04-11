cask "tuist" do
  version "4.179.1"
  sha256 "7a362d901606e11d1c1c9d57636da80db2ae0c12b96fb340cda222bd92ec78b6"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
