cask "tuist" do
  version "4.99.0"
  sha256 "a58eed43396e747ce53ffb0b5afb0cc07420112ab446f2d0ed927c32ebbcb4b1"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
