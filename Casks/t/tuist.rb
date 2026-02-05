cask "tuist" do
  version "4.138.1"
  sha256 "4275f0d2345212506fb5e8c0df625ec980dd739be4435abd2d53ea04157cf802"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
