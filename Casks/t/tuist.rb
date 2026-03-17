cask "tuist" do
  version "4.159.0"
  sha256 "e8bd6a40317abb0a9c6ee06b3eb9f97ff9d2cf363b83a7e52531cd225d6866d0"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
