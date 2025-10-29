cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.103.0"
  sha256 arm:          "7e1ead610423e47d84e44f81b8a78da61f12061c89a40203b76f68d37cc2b989",
         x86_64:       "32c56ed85f359da39d5930ad771a71a9de54770afe1f4eb6858699fd6f0bd310",
         arm64_linux:  "1829b55ab66183da117c2847fcc015ae99142c39725e11a99409846a434dc5fe",
         x86_64_linux: "28548238d08d834381b73eb6044bdcb3ec41194cdba866c9126f73c943c59f59"

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
