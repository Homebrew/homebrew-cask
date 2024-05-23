cask "tuist" do
  version "4.15.0"
  sha256 "299eb92458be0cec12ea1678e67c4782dcf2721f942e454b4a9a641980be5e72"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
