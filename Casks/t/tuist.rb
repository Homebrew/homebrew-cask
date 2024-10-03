cask "tuist" do
  version "4.28.2"
  sha256 "42d66c862a2e965570d0d32e12882f545a4ce68d6d567112ff9e8ed7928615d2"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
