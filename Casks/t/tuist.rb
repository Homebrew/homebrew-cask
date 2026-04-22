cask "tuist" do
  version "4.183.1"
  sha256 "cdf05f9aac540a0a4095f068b2ee469f4787009005a04cbe5ed5d861f156071b"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
