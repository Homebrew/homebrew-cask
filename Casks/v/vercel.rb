cask "vercel" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "66.6.0"
  sha256 arm:          "53a1d43302d70a143668efbe029e3e922753e4127bb832a431688783ad24b93c",
         intel:        "0eafac979f734458299b4cbe8ee2fbd86a25d0b799f4873269bb9055a95fc841",
         arm64_linux:  "abc42305245c2f9ddc0f7e91ea571545da888fe446edaccee4957b63ee1ede15",
         x86_64_linux: "5fdf69aabc432960e17b912e5237178f5b7e44b8a8ba49a082fb6717da92dc31"

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
