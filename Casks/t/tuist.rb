cask "tuist" do
  version "4.34.1"
  sha256 "4b46520d110ad9dbdb4e47030da47b32de83d9ce618de8212ce79e5558a35fb9"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
