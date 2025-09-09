cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.97.0"
  sha256 arm:          "bb5bdc050e729daf859bd5a5b599710cdc6c4a4419cb705a480f46d6379f703c",
         x86_64:       "bc71b0ba01bf5ae68e967b5ed464e78c8f6e6ad88665579abf78f9b001e08113",
         arm64_linux:  "dec78c9aae7662e87cb962e4d7c716bfb94075cb7ce42634299b0f025a362835",
         x86_64_linux: "263e83aa2c3b490557265c8d6c7afca194bfaf97972242426fe6925a6e8a13a0"

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
