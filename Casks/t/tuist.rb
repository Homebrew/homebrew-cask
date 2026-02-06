cask "tuist" do
  version "4.140.0"
  sha256 "9d9e320a0c461a21ed1826935b125b12009f60cf8b3621f4ca3035993dfbde85"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
