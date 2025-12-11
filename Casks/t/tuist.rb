cask "tuist" do
  version "4.113.1"
  sha256 "2a5a9cc43cfd2b812f1c5adfa5fae0164d0a31cd0c302edbc884beef682d3eac"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
