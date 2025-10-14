cask "tuist" do
  version "4.85.0"
  sha256 "3b0239bfa66de07d678bf166b8d3be4d418fea575c50f3b811282aff89f1ce03"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
