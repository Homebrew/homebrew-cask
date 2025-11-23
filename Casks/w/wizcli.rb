cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.105.0"
  sha256 arm:          "f02c86c43d8d4e7a9dea44d3ca665e3a6aa7c2613f72e81e6860c6adeb7b93b2",
         x86_64:       "3d71b922d603dc9f258576ede8642e5dd9684120cc26c19885ce846d94e97478",
         arm64_linux:  "b05d82f7dc154816d42bcf8775e74b7da2a62e089e5dde7df961fd00c7547f38",
         x86_64_linux: "dff7d185ac04612fa50fd00fc3eb5a590f29d938cce5afb38a764b7acad6f1a3"

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
