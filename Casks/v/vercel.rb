cask "vercel" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "65.11.0"
  sha256 arm:          "83b758478eb70ea93689aebd3e0fba84c22b882c9837bc34fe73b3f7c5a7a2f3",
         intel:        "923bf8c3977cf591a647db79079600bc7212fc5a31948e5559505ef12ac97194",
         arm64_linux:  "97b355b46923f516f8f9900c8c3466b25487c14a62a53d75113e3d6252df7a83",
         x86_64_linux: "47530bb8d8cc98b1cac5cd1ed12e93d88d085fc93aa8ab1935d2f5b75998b636"

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
