cask "tuist" do
  version "4.53.2"
  sha256 "7cebb016f3f52efdf1faf22e27fb4eb7b682a7c58c4fbf4cc17603f258503915"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
