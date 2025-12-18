cask "tuist" do
  version "4.117.0"
  sha256 "1c2ed442bc4316f6ddb99b23973cbc6664fda4095c3d1ee0dfb95cf315898d1a"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
