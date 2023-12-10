cask "tuist" do
  version "3.35.5"
  sha256 "8096eb9f82a217bec7c9a25ced3abf1c76b441eeb80862a4b0d22b1753d17950"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
