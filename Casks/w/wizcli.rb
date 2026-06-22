cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.53.0"
  sha256 arm:          "78a86e4eb1a884e688301cfa4ae63fe90f441004a50ec5d0f7e2f24c57a27103",
         x86_64:       "695facbb60e2f3d340de80b9d6af3be378ff432699beaaece79b61eeb2dd9a35",
         arm64_linux:  "6cc33618151a9487d32e04a41f416e4408db529c33ee6449504beecaf6669c6d",
         x86_64_linux: "ed47cc5d781f2059b050d0205bc162e4b3de51b25c94a4f1e5fb3ae6ce26e595"

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
