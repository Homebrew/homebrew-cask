cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.57.0"
  sha256 arm:          "95cd22b27cd6a018f7a2ad1602ea7dd0b13991f975448526a9eda805e67a8db4",
         x86_64:       "e2a898378084b9a6ae6bf1b0ed94a46a025a687ffefd1bd826e869e6a752a4c6",
         arm64_linux:  "8668696513d766f8c0be8a225c58f4970294c8960911511b4c280c6ce6b755d6",
         x86_64_linux: "188f568e3dc013b642e473b3cc5e5b3a6c59e5c599744c3dee9aa637d1534679"

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
