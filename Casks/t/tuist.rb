cask "tuist" do
  version "4.199.1"
  sha256 "905d6c3cbcc1bd15b426d12893582e13898cfcf215a517b4232ecb23189a88df"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
