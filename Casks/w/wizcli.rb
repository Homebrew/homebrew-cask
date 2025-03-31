cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.79.0"
  sha256 arm:          "5a01785f42773ac75bf850820a0e815d23d751336f18191d58776b59beebc241",
         x86_64:       "6d5ca344602348359bef4d51a35c82e37381e008bb845019fae124f1822ec8c0",
         arm64_linux:  "3783392db1d19bec9b7dd9d6373c9035577b5a9497cc1137906172b8efd94605",
         x86_64_linux: "b47c1a9a738bc73ad2295712670c7e9f0c18fd453b4551bd3159b26536391700"

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
