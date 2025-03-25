cask "tuist" do
  version "4.45.0"
  sha256 "86c32a0bd9f1b74ba5c9b80effb9cb06cb433d8fd652bebbb6943b7aa72231c3"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
