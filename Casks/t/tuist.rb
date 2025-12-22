cask "tuist" do
  version "4.118.1"
  sha256 "23090be59798ff84d5c20b63017236684e8884d84a896db69d5dbf58bee966d5"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
