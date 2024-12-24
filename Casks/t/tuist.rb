cask "tuist" do
  version "4.38.2"
  sha256 "14af45d18de9d3834ea32d4c9e572f8a69bf2c603963e950f4febbf5234d3b30"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
