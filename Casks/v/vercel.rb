cask "vercel" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "64.7.0"
  sha256 arm:          "2b3837917904c47efb7058c610905ec2393a8e6177c808987d7ffb5ef7c0080e",
         intel:        "947bcf1d6d47988235987f21c4d9977844099e873933bc8ff1578e52f2930383",
         arm64_linux:  "34c3ffc2a301afe458f2198e2503ec02c85922596e5437e4c83b25ddc8416b2a",
         x86_64_linux: "0a1f81e1b00931979c052584b6bb700915b23311cda4b71f081555544038f9b6"

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
