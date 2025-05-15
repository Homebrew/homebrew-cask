cask "tuist" do
  version "4.50.0"
  sha256 "947155a848fe8045b591070f82c3742fa819ebfa4ded55a11c29bfaa5d3c99d3"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
