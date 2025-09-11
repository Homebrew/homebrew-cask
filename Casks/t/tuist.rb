cask "tuist" do
  version "4.69.0"
  sha256 "aad88fcacb855e3c3bb5e5cf607527ab1cc392c7b0166da5df61093338dd7536"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
