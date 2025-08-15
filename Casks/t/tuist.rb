cask "tuist" do
  version "4.61.0"
  sha256 "31ca996adefe441fad507154e25cb080684b78b99624be84e12783b3d0cce2b9"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
