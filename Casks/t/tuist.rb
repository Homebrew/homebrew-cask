cask "tuist" do
  version "4.94.0"
  sha256 "b9d0d932b529aebf3aa56a2fdd26d7fd1bc780190634a6141153b978aa5364c9"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
