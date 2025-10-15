cask "tuist" do
  version "4.86.2"
  sha256 "cfc32e8e76e527f509ab6c56ae9e4ec120539e30d6a2483aa124946bd529cce8"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
