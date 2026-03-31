cask "tuist" do
  version "4.171.5"
  sha256 "d8734a1929c550c5367ce919b908c50cd9b9d18a8c943e9fb87333d376b07a1a"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
