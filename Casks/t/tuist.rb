cask "tuist" do
  version "4.80.0"
  sha256 "bc6b1446c02f2208c970d6dc1e77e89198f3f13ceb9ae1cac03ad267822396fa"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
