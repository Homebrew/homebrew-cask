cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.90.0"
  sha256 arm:          "e1bf479d73048ff7ebdd309be07843bbc2d9e540e5ed8fc06db3fab87f34e05c",
         x86_64:       "5bfad0a523a9f0e062e24c6ccd5b7db6bfe53ed1cb18a98abcaea72d455670b1",
         arm64_linux:  "617e7f93b091d7ce842b6c44312c54b4e90751c598be6859d45c397d1e4381cd",
         x86_64_linux: "4ccc8caaeed0f4528e127ac445793dc173030c94c15731800f40d5c8cf31589f"

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
