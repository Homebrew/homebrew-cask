cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.35.0"
  sha256 arm:          "c19b361e48987366a03a2d1ffd26c16d95db07d566de96c9735b21cb85343a1b",
         x86_64:       "cdebf8692aa0743d0a45ea151f102cae9e985d9a4aaa77ba7ee18fedce571bd8",
         arm64_linux:  "414856642361ca73532220999de772440df71a1f772bba2419a0ac7708f9241f",
         x86_64_linux: "0eb824d66eb10fb684225fdcbb24ebc84186513675522d27e42647178b77dd36"

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
