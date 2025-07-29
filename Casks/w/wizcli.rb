cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.91.0"
  sha256 arm:          "332620ab984a064b8dd3cdae297325868e9bc4be018050bba7924711bee3da29",
         x86_64:       "986bb30d1a31222a67031e7247f115ac003666d901b8984e4bfd24109cd0d3df",
         arm64_linux:  "0861f97838749a1d161162283599490556e2999981e2af9e30ac0ae915a0df5c",
         x86_64_linux: "302070f36083be48967d6560728bfef0fc56bfa5b70410992fb01bf74a1de259"

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
