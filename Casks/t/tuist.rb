cask "tuist" do
  version "4.48.0"
  sha256 "f96d0ed5ec4d6375aada2c02544aa396b25711d5a5668eafc171b6b79ebfa752"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
