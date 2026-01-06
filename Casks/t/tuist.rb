cask "tuist" do
  version "4.119.2"
  sha256 "9c5d5e123acaba00232d586ffe2ba32c72cd7c01255af86ef285519399f1149e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
