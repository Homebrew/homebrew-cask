cask "tuist" do
  version "4.67.1"
  sha256 "42bf7dae657012d1fc6c7b1b2289ec8ebf50da3d60a1bfbcdbe2bde517bc0e2d"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
