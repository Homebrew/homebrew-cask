cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.102.0"
  sha256 arm:          "8a5002864b563f81e1aea38e4ef5f1e42b501ebd2163da21d3fdaa2a627eed0b",
         x86_64:       "f5d4aaa6be8a9ef335321d9de4b8b849f6249cf85ed3d6cba4fcac1c923b62d8",
         arm64_linux:  "26421747bf188a91d5a1cca46bbd7871f4d9ec1a7d40cea12d0aed9733e17855",
         x86_64_linux: "c63e4ec2ecb944601a42baeab7d98bafffdf77c405aec097b12693aaeb6c7a33"

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
