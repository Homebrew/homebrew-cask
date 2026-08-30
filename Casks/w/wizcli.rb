cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.72.0"
  sha256 arm:          "0494e88ceff253148bb53eae9101c18f80d576b9d20577fb2bc1ef435aa560b9",
         intel:        "5edb29ecfdb0c02fbdd73c9cc0e95d42bd5f6ecab3eedde06bc0bebb00f8d1db",
         arm64_linux:  "3a6f9699e17389144950e3aa301ecef9a3cd780440a0e67aeadf31917b4e6bae",
         x86_64_linux: "be9d9f441b641940d4b59ba4ecc0b7b2bec2245ea7b7fb00006c796c1e08e20e"

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
