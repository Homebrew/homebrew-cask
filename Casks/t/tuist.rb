cask "tuist" do
  version "4.131.0"
  sha256 "413c0cf3d5488a8bbe3f1f753fb88b3b49e4043f79cf2682a774c5ff677c1f22"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
