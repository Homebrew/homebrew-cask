cask "tuist" do
  version "4.67.2"
  sha256 "fc0817ca9fa8299000ea2fbb3759f5faf61854f8bf69132301a9a5b9af3fb3b0"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
