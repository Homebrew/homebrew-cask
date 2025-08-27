cask "tuist" do
  version "4.65.3"
  sha256 "eab30b8b6a1dc05e5daa8622eb99533ab2d287680fa202cc7500d4a0fa83e9dd"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
