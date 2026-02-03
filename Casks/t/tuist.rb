cask "tuist" do
  version "4.137.0"
  sha256 "c06a6c2d4921bba391e71d6d8192fe729598d92a4928240edade921be533a60e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
