cask "tuist" do
  version "3.42.1"
  sha256 "4ea94560c70714e7b801fb7b2eab482ac5c830239ad62479d9ae1004e2649225"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
