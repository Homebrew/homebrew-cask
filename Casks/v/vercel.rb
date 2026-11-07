cask "vercel" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "65.12.1"
  sha256 arm:          "05df91d3181578653ced106085bdde80697dcc4f860d14b2d8a1476e4c596d1e",
         intel:        "02f3916c86df52b3fa4e51c82e1a100f4f89426e46d355b516e6b107670fec2e",
         arm64_linux:  "b98bcfbdd002bacfc50c286f0b9bb7addc6de5314ae38d82d83d55e14f3e8c3e",
         x86_64_linux: "db1f4b4070d09012a9f151bfd240e45079a09de5b1fe5b2c79372d3d5081e44a"

  on_macos do
    depends_on macos: :ventura

    zap trash: [
      "~/.now",
      "~/Library/Application Support/com.vercel.cli",
      "~/Library/Caches/com.vercel.cli",
    ]
  end
  on_linux do
    zap trash: [
      "~/.cache/com.vercel.cli",
      "~/.local/share/com.vercel.cli",
      "~/.now",
    ]
  end

  url "https://registry.npmjs.org/@vercel/vc-native-#{os}-#{arch}/-/vc-native-#{os}-#{arch}-#{version}.tgz"
  name "Vercel CLI"
  desc "Command-line interface for Vercel"
  homepage "https://vercel.com/docs/cli"

  livecheck do
    url :url
    strategy :npm
  end

  binary "package/bin/vercel"
  binary "package/bin/vercel", target: "vc"
end
