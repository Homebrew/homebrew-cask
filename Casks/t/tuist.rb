cask "tuist" do
  version "4.44.0"
  sha256 "3a4b426a4bad2311fe62ef472378a5ac3bfbce550b9d0cb611d4ddb663a88e35"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
