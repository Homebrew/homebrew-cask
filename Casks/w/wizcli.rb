cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.60.0"
  sha256 arm:          "4005e5e0e9229b5a1ec09fe790e8d4a22e315a5ac54f943a16326d286fa367d7",
         x86_64:       "a013063accae1537e714aba70b3f825e96087785843f37c30cb3aae2629fba68",
         arm64_linux:  "629d0142376231b63869dd07506b1bde1baef08c7a6e0b71520d94f561efbbaf",
         x86_64_linux: "465243fabc7ffe480bcbffa0c293461bf8a84e5c7105227d30f83c964c8f9e8b"

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
