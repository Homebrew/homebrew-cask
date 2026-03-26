cask "tuist" do
  version "4.169.1"
  sha256 "7768150839834b68eedd50a6f2c2a9a96820b9bdc9eed07cef52a91e7733eda3"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
