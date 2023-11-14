cask "tuist" do
  version "3.32.0"
  sha256 "81c129e8bda17822fd4f3d43917a0543bd06d3b10e44c6bd033de2256c368672"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
