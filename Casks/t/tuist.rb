cask "tuist" do
  version "4.184.2"
  sha256 "301ccd3705e3838145d3a28d5de50fdb71b30a343d7accc0ff8dcb92eb0ef5f5"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
