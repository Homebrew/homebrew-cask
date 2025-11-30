cask "tuist" do
  version "4.109.2"
  sha256 "187d0e9ae5db99d5dc9fecb64784e748a46244037247ad53c4c0d16f8bd459a8"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
