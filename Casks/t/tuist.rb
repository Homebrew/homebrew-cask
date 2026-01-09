cask "tuist" do
  version "4.120.0"
  sha256 "c9ce81ce658723013f49af6b1d94dd518fb1a6a565f3f7a4baa96795d50da5c2"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
