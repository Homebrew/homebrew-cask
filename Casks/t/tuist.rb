cask "tuist" do
  version "4.150.0"
  sha256 "601c2f6ef4a74565adc333b86f998e381fbc51915cb97d3cb6b4f762bf603da8"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
