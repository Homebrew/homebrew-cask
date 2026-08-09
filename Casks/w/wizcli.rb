cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.66.0"
  sha256 arm:          "70b789d0088442f54aac2fcfbb75cae3d5217cfb379ec80e3ff03b049562ccec",
         x86_64:       "4336fdf7994d11a0a870a3fe43d8a0f2086991aad70054fce9149ea7846fefc4",
         arm64_linux:  "f7af36d9d50524ba4845be1f01a370dcda38f911547485b7c35245d95383896a",
         x86_64_linux: "11831b4ab8f5a7e117e9932db4f6308dac8cde73d469d6eb43f568be32c40eaa"

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
