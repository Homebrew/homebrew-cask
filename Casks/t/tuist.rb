cask "tuist" do
  version "4.36.0"
  sha256 "6e6f177982396555c518214aa4506c03d6b3c3e01bf4962c8d688dc137b4a6f3"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
