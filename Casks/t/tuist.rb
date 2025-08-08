cask "tuist" do
  version "4.59.1"
  sha256 "47da178bf3873a27de88957155915e06556b7137475dcf791230b591efc0f7ef"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
