cask "tuist" do
  version "4.118.2"
  sha256 "efe018b527fb88cd41e0104548dc74521c8fa5f98a06746383b54a1c95a74c81"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
