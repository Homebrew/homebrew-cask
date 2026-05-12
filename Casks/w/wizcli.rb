cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.46.0"
  sha256 arm:          "0a8be398187cf3c50bae7a692aec181720576faf2da4da733a10218676ebf057",
         x86_64:       "3a5ee6e4adbf3ad865029eeaacb9001edad2a5da143c777fbe33c75f169ceb6f",
         arm64_linux:  "412259934cc303f611454fc47b489017c731a6fddc3bd67032e89aff574a22cc",
         x86_64_linux: "f69f1950621687589bc95ad60c7e227f337c2269929acb6a8a217ced4f616e24"

  url "https://downloads.wiz.io/v#{version.major}/wizcli/#{version}/wizcli-#{os}-#{arch}"
  name "Wiz CLI"
  desc "CLI for interacting with the Wiz platform"
  homepage "https://www.wiz.io/"

  livecheck do
    url "https://downloads.wiz.io/v#{version.major}/wizcli/latest/wizcli-version"
    regex(/cli:\s"(\d+(?:\.\d+)+)/i)
  end

  binary "wizcli-#{os}-#{arch}", target: "wizcli"

  zap trash: "~/.wiz"
end
