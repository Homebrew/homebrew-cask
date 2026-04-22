cask "tuist" do
  version "4.184.0"
  sha256 "bafd8080ea503dac4c6e6f3809eea711dde53b39361c99cb0ceac4d2ad63fb14"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
