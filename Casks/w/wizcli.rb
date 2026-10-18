cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.80.0"
  sha256 arm:          "27c0cc26b2cdaa289fceb6925beb78faed7bc3bcbed82bff869f70313fef20e5",
         intel:        "67ae0ce5795c20df5b9c86d18ccf9b24e5e26019aa057bb0a09b8f5b5d2a63b9",
         arm64_linux:  "cfcc26fcfd8b31787cfca719e6cc19d80b3c276ac348b6ac4f09165ad77ffaf9",
         x86_64_linux: "99d00c7e702c2bb5012474dc3e2ce2efc531137fb8f8bd5f1cbcb3a53ac8db3a"

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
