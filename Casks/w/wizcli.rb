cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.81.0"
  sha256 arm:          "5b21760aee91d6cf29b3d9425446a50a50fed44d5f44460bf9bbeed0614c4289",
         x86_64:       "8fc06218d7174aae820db6b0a25c4fd40a3ba09fe8819227b4d9febbec90f78c",
         arm64_linux:  "91d7d0b919f6f8925c5c87fefd1acfe3c65698f39205c107bb57e7d563748533",
         x86_64_linux: "b21b6eb20870d70645f7520607ae81b120ffbe265a0c9e2b49dc9f09705b65f4"

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
