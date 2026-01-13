cask "tuist" do
  version "4.123.0"
  sha256 "858f567bd26f52129d0ab3fd49910087626dfb4330ccbf0e307af1f25b6efd85"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
