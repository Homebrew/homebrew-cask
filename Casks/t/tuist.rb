cask "tuist" do
  version "4.87.0"
  sha256 "c0783708fc893b2fe10d159b18fd1733364ec4f357aa9df23d95a2c7f59cf83f"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
