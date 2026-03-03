cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.33.0"
  sha256 arm:          "d0bc4fad9fde71cdea9511a9581ae0ebe4f5ae0c8214329dc42d7f933d2d9921",
         x86_64:       "dc74cf2c6fdd9e26f02a4691f562034dcde7ee45de26eb601aa1b30bcf5fbf50",
         arm64_linux:  "c92640ceb46eba8fe5e928b34351e3cdcf600e41286fe2e8ce6ed23ffa48a809",
         x86_64_linux: "bfd06be0f83b955009912f26b3b9b4911e4bd677526fe602544b11a82bbf65b5"

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
