cask "tuist" do
  version "4.84.2"
  sha256 "af96bb8f2144e65ec7d9de0c06588434a94bd51b12c7f2072c6920a2fdc144d8"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
