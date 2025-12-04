cask "tuist" do
  version "4.111.0"
  sha256 "d441c4e5882b1a54839fbbb0bee45a3e58f2aa5d0182824d7e12e2db66358cb3"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
