cask "vercel" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "65.9.0"
  sha256 arm:          "8ade01169a3d66746102428614ba59e4f0fa238f25c07b31887a3c3e45899cd8",
         intel:        "7d742e569ffcdae5be08934682358ef5afe3d7112a2e46fc1a87b1f70fe43bef",
         arm64_linux:  "68837fb3c27d596d644729e168ceb8be813d4f17c32d7312d8554fdd6650f57f",
         x86_64_linux: "5a9c5741a70819639b92fcee4398915c3794b5b822559c32dcc9862b4ed611eb"

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
