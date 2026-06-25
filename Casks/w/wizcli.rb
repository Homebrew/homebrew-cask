cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.54.0"
  sha256 arm:          "45da9b91f4cffaed58871a5a93dfbde0323b5f9f9d9897cb2f4d70a1de6a6fa9",
         x86_64:       "36c25eb896ce70178691ea2033572c4cf082a14f27abb38458d38b01dc22f947",
         arm64_linux:  "8df7128cd1607d44f3207a0edeab58ef73c354c3273abd683a8bd8bce18a6d22",
         x86_64_linux: "760d34e9b575362b155ff1c270da82c0dd83c8d9d6c29d08f19a61675b49c5fb"

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
