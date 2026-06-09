cask "tuist" do
  version "4.197.1"
  sha256 "ec9c3dadf6885a366578a6391a9ad27ccd4287acbbcf055bfa0aed98d4864f17"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
