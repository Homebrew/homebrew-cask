cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.79.0"
  sha256 arm:          "5a01785f42773ac75bf850820a0e815d23d751336f18191d58776b59beebc241",
         x86_64:       "6d5ca344602348359bef4d51a35c82e37381e008bb845019fae124f1822ec8c0",
         arm64_linux:  "dabaa4ae0037a3435d26ee16bbfe1e1086573a189878f26a23ab196f81899e42",
         x86_64_linux: "23850d57a423e9a30b9498c9fa5be23335686143e721f37e55bb52ed63988d1c"

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
