cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.81.0"
  sha256 arm:          "40d7bfb1cbcaedc45ae777fd0cce971a65aa4a413b5ee86c142c4598c6470519",
         intel:        "da7783670fb961b28c4ed585ec0a1b48c9fe2e9e7c9e435524da10fd64514fb6",
         arm64_linux:  "059e3c745a4c61f5e3252b6749ca2f3997d340826216069266039332ab416df7",
         x86_64_linux: "843718dde2d2e375330eadb23a8dd850378de2ceb9f3366053470f0e3015ffd5"

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
