cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.55.0"
  sha256 arm:          "4a09f79d966ba3d6d03bf49f30f5e5fc20b126f0058a16db28b7b433c6ec4005",
         x86_64:       "d6739a2fcf85107e14c28f400455388659baccffee6cb38e6d2b21f6e8873e62",
         arm64_linux:  "8920ba06e8912e21f6fc62c483f9798c7fc40857b27e2cc5e246e8e7b76d4b38",
         x86_64_linux: "6a4fd2e06b79abadb5f6ab4e5dc87084e77619b0993274c35fa7ab9010a44dc2"

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
