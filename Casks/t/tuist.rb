cask "tuist" do
  version "4.181.1"
  sha256 "24e24448980ad189109658071bd9f4b4ee9ece125ab47f1e1fb0a45a5d657bcd"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
