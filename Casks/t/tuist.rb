cask "tuist" do
  version "4.115.0"
  sha256 "696093cab763bd435374f23a43569b344ed5c049fd2f53ee2e38136999c71bae"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
