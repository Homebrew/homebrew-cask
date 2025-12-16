cask "tuist" do
  version "4.116.1"
  sha256 "a3b7af770a9e1bf41f096b6e09416da09f88ea72c7e275e2c45cc1fa190a4169"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
