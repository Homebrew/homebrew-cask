cask "tuist" do
  version "4.163.0"
  sha256 "a5b048ed2f8bbb8ebe29da7d00455d75f0405e1026726bea448d432c4050c2bd"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
