cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.84.0"
  sha256 arm:          "8de68b8b7ef3dcd05c58f75d57f47e9b80454de996eb08c0a1ef93e877d41d55",
         intel:        "85ad65a7f83acaef943c8ed5afe0d965a689a1d33fac09cabf196c9428b690f6",
         arm64_linux:  "64525f53a5d856169486526307603371cc1dbd42f547f7f92d8ae34fcbc632ee",
         x86_64_linux: "727c00d4b04ec531cf69536162fe0b5f4b8a845b1faecebd2f734cd12d71f994"

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
