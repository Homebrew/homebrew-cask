cask "tuist" do
  version "4.155.2"
  sha256 "0949ad89121268712edfb0977dc6cf6196c3f285dfaf232dcf20da729366ab0c"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
