cask "vercel" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "65.0.0"
  sha256 arm:          "0fb9ccc6c4afa99307c9618717f0f4802bd2fe5b124afcffe5689e95eafded36",
         intel:        "6c2b97f02f02661a510fa096083fc6434cdf3c2ec53ec299b666f81177e5f649",
         arm64_linux:  "5627c70f00b1bef91f29ef5869080cc78975a4c3f176bf1668ed13cd101ae544",
         x86_64_linux: "00afc4c7c5f4eec31038e34c707092624d10b457fa29854c9cd22a0d5b55a517"

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
