cask "tuist" do
  version "4.55.0"
  sha256 "8ccb7e48cfd2013b05776f0c13831992f176a8ca7b7ff3a7d54ac6716b72c29f"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
