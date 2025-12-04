cask "tuist" do
  version "4.111.1"
  sha256 "c23df6fd837b817c8be09e311a53498caee9327666495a16609084d7e390e488"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
