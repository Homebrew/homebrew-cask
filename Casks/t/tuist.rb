cask "tuist" do
  version "4.73.0"
  sha256 "65fe25af6642fdec64142493e43620556fc2f8617d29b59fb532902e0587ca03"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
