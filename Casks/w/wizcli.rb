cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.83.0"
  sha256 arm:          "de4c5d8a2f3b6fe6f1258932c3cbeab009226ab051074ff664080e0c8a739407",
         intel:        "2ce66b67aa2b9fd89b04d6457e129efb8b942fe4eeca7793497e5b70b4c40fd8",
         arm64_linux:  "e0af7fd09f30c9a5c1d6ec6edcc10385b9d66a091570a8b25a214d5ed561592c",
         x86_64_linux: "8c761c276881d7ef3770948454b3ef6f272969f15fb354e27936987d98739ff2"

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
