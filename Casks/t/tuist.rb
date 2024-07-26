cask "tuist" do
  disable! date: "2024-07-26", because: "It's distributed through the tap https://github.com/tuist/homebrew-tuist"
  version "4.21.2"
  sha256 "7c00de9e0d45de9b1071b84d81a4cb95010c807733676e065a2926db45e4fc88"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
