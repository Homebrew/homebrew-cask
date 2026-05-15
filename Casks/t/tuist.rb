cask "tuist" do
  version "4.194.3"
  sha256 "88b5aef3af26f7f17bfbeafcc538dd6972298e07d4e1765c358754f327b75665"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
