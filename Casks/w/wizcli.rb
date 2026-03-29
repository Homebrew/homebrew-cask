cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.38.0"
  sha256 arm:          "19dfd0db7b997188556d3e01c7283544dc1d3e4f842816c18af83642d92ba69f",
         x86_64:       "fc90c16c3d9665d1d478e8cb67317b275f18f6f854921f5fb770928c5c04c67e",
         arm64_linux:  "ef879ded05a59accde0a44df003cdff2d889b5a2f8941eb2b277fd339f50293f",
         x86_64_linux: "7c368d12ce3c38ce7745fb9866e1f3133d9b75d1d1e3c89c9053bf03087098c7"

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
