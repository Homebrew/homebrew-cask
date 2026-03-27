cask "tuist" do
  version "4.169.2"
  sha256 "594be7f8b0512c64156c291abd316436b5b4e36e7b0eafbd4093b5319d69a9ee"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
