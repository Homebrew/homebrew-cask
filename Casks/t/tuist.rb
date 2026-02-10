cask "tuist" do
  version "4.142.0"
  sha256 "35f51fda3b1d817eedd0399c12a259c7d838706e1a210184d5831601b7ab0f68"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
