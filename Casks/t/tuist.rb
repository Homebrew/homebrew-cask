cask "tuist" do
  version "4.195.4"
  sha256 "b756f4a6c4459e8adf7259a250332b534888dddd68eba85d4af49b3215fa286d"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
