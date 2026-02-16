cask "tuist" do
  version "4.146.1"
  sha256 "3dc0d82cca458f26c7dd87c92337b7633b09480772604a68dc2ad85b74adb0bb"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
