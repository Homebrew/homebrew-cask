cask "vercel" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "65.14.0"
  sha256 arm:          "7e1caedbc5f0094dfc40bfa281d03cb65820ab369eae5b99bf4bb0101dd2534e",
         intel:        "41ae3e65e1615a78c3d9c686763a00557edfc9618a604bd5a2715a76e7df6a7d",
         arm64_linux:  "06ab067e1e98aae0407ff7ebf52a13795a3ca0e5b461384f8803e55fbd4a7b2c",
         x86_64_linux: "00cca33dde9894e7874b880a4474972ab095eb8bcc5df450b63fa418045f41c5"

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
