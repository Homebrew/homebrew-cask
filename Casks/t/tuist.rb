cask "tuist" do
  version "4.194.4"
  sha256 "702e8bf147513213bec4ba12e6060497583fa9d070048bebb6fa12b5b1a02b71"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
