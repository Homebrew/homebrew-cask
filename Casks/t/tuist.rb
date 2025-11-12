cask "tuist" do
  version "4.104.1"
  sha256 "61839380df60bd9dbdc313481340afd72a4d21639c1f8d9f75f89200f2a5bfe7"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
