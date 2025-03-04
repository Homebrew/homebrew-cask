cask "wizcli" do
  arch arm: "arm64", intel: "amd64"

  os macos: "darwin", linux: "linux"

  version "0.75.0"
  sha256 arm:          "71ca7cea0564657a8b7368daffd9aeebe5131f0def8591c961ec57067dccdb92",
         x86_64:       "1f3a1cc516deecbb3ac20569413e1dd091e5d06522a9407f0dddf7de048b9820",
         arm64_linux:  "6ff0b52827772f44cedadb88582dcea849ecefce603fdb83a2a2a3921715a39f",
         x86_64_linux: "8b6e3f947f9def16626da0c1d3addd34f1d9d0f9b23feb1a59d4b4b63a400802"

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
