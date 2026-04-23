cask "tuist" do
  version "4.185.1"
  sha256 "357c6a828af1c6b4b4e626ab2922d5165f0d00f303c3919197333839ace5878b"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
