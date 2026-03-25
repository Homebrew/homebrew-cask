cask "tuist" do
  version "4.167.0"
  sha256 "f52689bbcdd0d5a8341b7c98908baebf297604fbac4298011a38cb3ab2043ec9"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
