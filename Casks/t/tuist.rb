cask "tuist" do
  version "4.82.0"
  sha256 "57b031d6ab401e162b3253e549ea70e9d2740699b7e6c606797c365a5b53aa64"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
