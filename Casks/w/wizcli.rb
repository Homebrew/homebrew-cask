cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.75.0"
  sha256 arm:          "2c5402278a890b7d1c999f027b215293c5610bd70107ce12111f0196a8874c26",
         intel:        "72f94b4dbd6e456767baa26a7cbec0557a6fdd6cf5df9573a6ba395034ab57ec",
         arm64_linux:  "78f7c93eb69fbf0cc44641a4a76206468cc6f11680b6f20b586214bc06fbcb0f",
         x86_64_linux: "1ba377887ed9d0543fd24d9ba0db778e52dce0c54ad35dd194410f9f64cd609a"

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
