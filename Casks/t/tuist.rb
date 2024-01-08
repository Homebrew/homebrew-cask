cask "tuist" do
  version "3.39.3"
  sha256 "3a25c1d9fc4068138f1fbe629a9d7e6a6ddfad149cb07fb5fb30ff4984b8a63e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
