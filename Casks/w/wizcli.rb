cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.50.0"
  sha256 arm:          "92c91b90851468627da5c4d15553e2720b61d19370acc840cc58a2612f75d5b3",
         x86_64:       "6b2665da54fce8a3e2d214651767551a8fa0d0e20ca519b839e7bb9fc2cf1ef1",
         arm64_linux:  "a9e76f22d545bcc7edfe38e8b1d948a79856d4cbd6deb99f9838ee3379a674ca",
         x86_64_linux: "e09933dd7c66ff98cc6f948dea764dfdec9e2631a8b226a7307f77d5a9d560cb"

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
