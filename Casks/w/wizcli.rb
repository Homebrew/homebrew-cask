cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.40.0"
  sha256 arm:          "b989c82aaf8bad228eb741d60fc6c28418bb05852b9da86e8cd563d0a7b0191a",
         x86_64:       "cd041a09d55e9a0f9aeb0ba2bd94436922ee319c9fb98e345cb79c4eb2b3a5a1",
         arm64_linux:  "e0808d3c4d285223c8b4107ce629deb2b8e7c493328cf3b05ac0f1723eac65fa",
         x86_64_linux: "594afc92815728055882dca0e82334ac02d58fb4c1f430f5e4635ea2823284f4"

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
