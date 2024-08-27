cask "tuist" do
  version "4.25.0"
  sha256 "b194e8d9263549a4a71efe82ebf06f8bb1955b7d0240c4876fcd8e8fec4e6344"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
