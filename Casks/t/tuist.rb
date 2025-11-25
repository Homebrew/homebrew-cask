cask "tuist" do
  version "4.107.1"
  sha256 "21bed74c7d2a4c9ce1050201822835e56b88585908dda1cd063174eab6726252"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
