cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.93.1"
  sha256 arm:          "febce6782a2c1442411c8860a01e840ab98e8608c4462e9f6431769cd2ef21c5",
         x86_64:       "e869b6d32ea78fb4a47300f9f3735dbf053446a7ee6e6fe4c334e040030ed0a4",
         arm64_linux:  "6b608c8fdab77d90c8f484f9d49f06216aba81a9f317efe73e87bf010b0e2e0e",
         x86_64_linux: "ecbee0c7f6e441eff495326f32e271c08fb265082753e7c4130403ce3a530fe5"

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
