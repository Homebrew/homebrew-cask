cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.68.0"
  sha256 arm:          "52503ea7d976eefe7202f4846b742fabfe248b1d09618709c947f0754a5f11e1",
         intel:        "b1ede8ae34ead315a9e33358e048a5b2c97dd219ac17694a788a1fd83bc28934",
         arm64_linux:  "454d3089c04463251264ec6dc1c7f330c2fddfb4a3325cfb5b6fb31638f079e9",
         x86_64_linux: "2e34de83c3acbc5189a836622a7833c63bd77b92e2ed3265eb5d2a66ca3dfe81"

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
