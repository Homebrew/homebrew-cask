cask "tuist" do
  version "4.85.1"
  sha256 "cd3b4d6e7b386956fa89cd0c560ddff5fc2b859e01de64e247acdfa73a49437e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
