cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.78.0"
  sha256 arm:          "21b30c2aab4e2975c4b7fd7547e833f128658b6543c141fda31f1c07ca0f9872",
         x86_64:       "3ad12f82669d63461f612c661a3de4192f46710910e91bc8e56f97baa68ec2cc",
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
