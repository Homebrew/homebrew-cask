cask "tuist" do
  version "3.23.0"
  sha256 "e55035165b8fcac989f13fa7cd7b65311d5aeeeaa1fccdfd4724cf23956a5748"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
