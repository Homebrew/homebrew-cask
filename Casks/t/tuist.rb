cask "tuist" do
  version "4.162.1"
  sha256 "a0acbf57c0795d1394773884ce8b76e536e510a832f54a0d42a17fc24fa4eeb8"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
