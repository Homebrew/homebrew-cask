cask "tuist" do
  version "4.174.4"
  sha256 "a60effb6040c26ed8e65db39fb8b5d1c23966d2b399c43943ecd1ae1ae3930f4"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
