cask "tuist" do
  version "4.133.1"
  sha256 "42a5f138310517791386a90e685e766a06911d72f46b77e62b071b64814e8c14"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
