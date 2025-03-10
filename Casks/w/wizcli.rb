cask "wizcli" do
  arch arm: "arm64", intel: "amd64"

  os macos: "darwin", linux: "linux"

  version "0.77.0"
  sha256 arm:          "a4f3c68cbd33f9db8355ad5c30cec787997824afdd2ca2e8b920cd3bc7e54e8d",
         x86_64:       "1c59d7bfa0249c086de9e0269488f4bd9c92a7a4533c54180606e2825668a16d",
         arm64_linux:  "6f214b64238765488605b82d281fb238f0ee143a1e930bd5cba50636e9fb5d7c",
         x86_64_linux: "33171ce0e32eb9f50d44efd462598a5d74702cb25aa70ae572e3d200a00b1b0a"

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
