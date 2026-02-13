cask "tuist" do
  version "4.146.0"
  sha256 "d0ba9113242f9b143bc252cd4ce54a642fbbbd92585ba5265b581da08a520313"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
