cask "tuist" do
  version "4.22.0"
  sha256 "28d16c70a5522757214f386db06c60dc79de0d86b6ecb98d2e15775d9814f691"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
