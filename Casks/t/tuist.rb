cask "tuist" do
  version "4.118.0"
  sha256 "127475d34ca251cac9c3039a3a7ece6d9dd95f0e476dcda99b1ca53cd203d2d3"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
