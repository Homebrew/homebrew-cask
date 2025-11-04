cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.104.0"
  sha256 arm:          "2f5fcc3919376fd1a7428a0a0f580c08bb7c2423541bcaadbb1594938f9bbbed",
         x86_64:       "3fdcb0c45b16ee7242f1ea506efe89d4c2bf4d78c6e95682c06533071cd5ef57",
         arm64_linux:  "1861e542f4b8343689a8bd7d6b0e0be5ceea79f463699d46bffe959a01b95339",
         x86_64_linux: "3fb92e96e109d317045c0f570b021b59f6e317a011e345f49fd8017be117b3ed"

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
