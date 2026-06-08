cask "tuist" do
  version "4.197.0"
  sha256 "752bbf8b0bddc13a5c09b7b38c6d3d2ae5014157a95a2126d851d7f5127026b6"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
