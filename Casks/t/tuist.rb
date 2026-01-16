cask "tuist" do
  version "4.127.0"
  sha256 "696e4eb87339797568666b2354aae9d5839093dd47acb5a8dca0446a8d4415a4"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
