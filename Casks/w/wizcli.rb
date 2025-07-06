cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.87.0"
  sha256 arm:          "bbe2918a9699da918139c116ae59b4e41f9e8d003d90ffc48337efe4e891d551",
         x86_64:       "bf81879ad3cfdaeacfc5440faa3817367bb4643ea0fc4c5e60bb49b4b67c0606",
         arm64_linux:  "7b56742622fe7538de4510efa8648ab948edd49cb66e142333e47fe66f235e07",
         x86_64_linux: "c67395c5f8bedc8b01d784fe4cf549531e38c795498e2d19b7cfcae9eb266f09"

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
