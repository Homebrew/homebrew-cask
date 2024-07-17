cask "tuist" do
  version "4.21.1"
  sha256 "d6bb039b4e7ebc2a2a5245af8c1696f5cea2befb178f1a2be466a63463965dad"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
