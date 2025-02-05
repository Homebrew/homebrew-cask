cask "tuist" do
  version "4.41.0"
  sha256 "dc540952946e6ee596d70eee4beb4ad275db39f8153b39aaf0abbb00c971a735"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
