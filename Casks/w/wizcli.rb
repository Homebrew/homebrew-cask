cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.51.0"
  sha256 arm:          "7c47f5422e65b3ee470c1339f92e04496cb04ea0c2b15f6ffcc53e2c4213d58f",
         x86_64:       "caf94feeca840d3d8fe35009968de6f304a70a2ac6c8cdead4208778b7b1238f",
         arm64_linux:  "5e07d26b07c03827cc8638a8f95ecf63634822b8e54727a69da614a14f5bf64d",
         x86_64_linux: "bb4effe1060568ac6532e26da896661b289ae85dbcb017b595015294efc22797"

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
