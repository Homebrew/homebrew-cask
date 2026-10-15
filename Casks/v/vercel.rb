cask "vercel" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "64.0.2"
  sha256 arm:          "b76bc71c1021c4a2deaf6febe8e00b67b20fa4936b395c729e4e6280981b85b7",
         intel:        "475abc4e43c1d3d14fb524193934388726714d98e9e9e04041b7eb8905c2c3a9",
         arm64_linux:  "18508d4417387b1f73d513ce16f1ba29789a553237ec07a732857be4c906612c",
         x86_64_linux: "77194fedf228c899c6d188bfc758da0afb2c266c9ce9f9c4b4f6079a27ee1c74"

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
