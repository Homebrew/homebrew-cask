cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.64.0"
  sha256 arm:          "657c5e9b78d3d8dd31758b375345387aeb322f28784c26e108d9fa31ebf3bd99",
         x86_64:       "fcf0b4ad788e9a714cf6693edbe618fbc2ab54d8b2d86228470eac3b69aa6322",
         arm64_linux:  "8a6d68b0871de98e564469858a5cdb69e46bb6438f22ac9a7cd89d9aac7387d6",
         x86_64_linux: "a872bbd16e4179cc059548dbbe3702e1b4c236a0c512ef93e4eee45c5fc0639a"

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
