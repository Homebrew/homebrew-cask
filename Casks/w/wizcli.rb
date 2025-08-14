cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.94.0"
  sha256 arm:          "4f4d2444e65c46d83f001665a79ac636b360bff670902c415ae22273ecb0e0a4",
         x86_64:       "55d7eb7c5c96ce5e88dcf4e539f80a5aa58eb468c8c8540209c7cd3aa20e1e0b",
         arm64_linux:  "354e76da98968da8ecdfbf72d7fa26cd8339d03def4324a84b1614702699e2aa",
         x86_64_linux: "c9648b8af484c8f1c6dd59e52e64fc39adfbdf061d7be6ab6710482cee1c7c08"

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
