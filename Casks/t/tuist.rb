cask "tuist" do
  version "3.40.0"
  sha256 "60c9786c71d7277e63aa0afaf1cb9a8620ced00812134d90a5dde790b1af1c78"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
