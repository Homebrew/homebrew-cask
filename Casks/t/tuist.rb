cask "tuist" do
  version "4.179.0"
  sha256 "c1d19ef069494a2cff5bcc3af60b55b94bb4635c1e46cd27cf39a22906d6d3b4"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
