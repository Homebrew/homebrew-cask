cask "tuist" do
  version "4.32.1"
  sha256 "315ce09596079c8503fa7c19e55e45f1dbb0ddb487dfdcddc07cc46224804bb1"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
