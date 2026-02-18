cask "tuist" do
  version "4.148.1"
  sha256 "43cd5fa1f8b0c55bcb057f9e84ee969308be740306b7f4495ee25b566e48fc2c"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
