cask "tuist" do
  version "3.33.1"
  sha256 "75fd35ed4318b3af257d70684ce980245ad2738c225871763b10d3c36e5291d0"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
