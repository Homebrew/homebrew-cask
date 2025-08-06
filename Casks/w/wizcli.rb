cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.92.0"
  sha256 arm:          "71fecde6d9b945842b6ba6a886b3e4aee5d36e3f019724c1bd6719aee5c46abb",
         x86_64:       "cf865dd253edd7058849c578ffada7ca558d71fd13f679035b27336823a16e3b",
         arm64_linux:  "ed3a2825a62f35737b2bd9f40d6f7ca4f53c6c051107ac8c09f546a9a2ddeadd",
         x86_64_linux: "919ff54387fd71e6168d9d748c6d73a8414a3cb7ffdc94ebcebf7c1546e5f4a1"

  url "https://downloads.wiz.io/wizcli/#{version}/wizcli-#{os}-#{arch}"
  name "Wiz CLI"
  desc "CLI for interacting with the Wiz platform"
  homepage "https://www.wiz.io/"

  livecheck do
    url "https://downloads.wiz.io/wizcli/latest/wizcli-version"
    regex(/cli:\s"(\d+(?:\.\d+)+)/i)
  end

  binary "wizcli-#{os}-#{arch}", target: "wizcli"

  zap trash: "~/.wiz"
end
