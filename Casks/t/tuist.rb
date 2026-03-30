cask "tuist" do
  version "4.170.1"
  sha256 "e9f295adf05744d5a6387b6cd016efc4bc1bdc818943e4ef9ff212db41084483"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
