cask "tuist" do
  version "4.56.0"
  sha256 "c6f5d2d8a42708cfb206d2f8a07259ba0c6d0e80d5e22c368c3b46b4f1ae83de"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
