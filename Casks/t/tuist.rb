cask "tuist" do
  version "4.17.0"
  sha256 "8214878a2dc73f5f8fe9e7d4fea2151a37dcff3805e762520a80c2f0ab0f86b6"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
