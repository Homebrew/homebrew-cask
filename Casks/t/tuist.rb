cask "tuist" do
  version "4.104.4"
  sha256 "f3a8c8939241ae03c17b660775445ff63f387c7ba55246d3efa1525381cb8b5f"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
