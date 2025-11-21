cask "tuist" do
  version "4.105.1"
  sha256 "3a2c5c5584b88317eb97e62c61fca4ce7dc20bef7826cc9ebf3e2a991268100c"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
