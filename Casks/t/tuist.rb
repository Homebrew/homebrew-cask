cask "tuist" do
  version "4.51.1"
  sha256 "7229f98cf137365c1667059f84f2f3a725356f45e7c12b2974c7edb5e561521e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
