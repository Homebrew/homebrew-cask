cask "tuist" do
  version "3.26.0"
  sha256 "32474ff8007a11155f5b5850bda183dcc492c13c528fbfdfc1f4bf5bfbcc6b2b"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
