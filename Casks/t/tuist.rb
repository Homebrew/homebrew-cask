cask "tuist" do
  version "4.8.1"
  sha256 "242adcb1443384284817fc5eb442f015618f01c07d8b2d85f2ac1b27eb8a1e99"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
