cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.101.0"
  sha256 arm:          "b6cc18c67561676d124d34da89f4021939c2816be3ee9f004f25f3647addf5ae",
         x86_64:       "af01be1686a620981d10597f5803b9d71b75a2003a949e0f6d074f5985297d9f",
         arm64_linux:  "6383298a52d8b85e2606e995142ac58cab36cab5ac4629944d3f2e6997f42ff7",
         x86_64_linux: "c3886f889c29354a64caccd09e77e56824b1435ff96eb3dcfb7e9e1b69d2a8fd"

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
