cask "tuist" do
  version "4.59.2"
  sha256 "e57206f291bb870be378ee0a8379141bbd2e2c3fd7a28ec87da152e736b3186a"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
