cask "tuist" do
  version "3.20.0"
  sha256 "f46f04ae8937b45fe466746b1ef48d988cd832d99845a6bd380379ef53f32aeb"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
