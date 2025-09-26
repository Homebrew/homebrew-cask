cask "tuist" do
  version "4.79.5"
  sha256 "6303236baa2e9c6a092caad624370e6f3bdb35b3e8435caa9a0b764e783ed6a7"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
