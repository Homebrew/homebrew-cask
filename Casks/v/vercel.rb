cask "vercel" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "68.0.0"
  sha256 arm:          "45abf57858a134326164d9bacf7c2e886de84d03894ccce7f07f51429084c5b6",
         intel:        "2db4d10b8be9865f1eec530dd90fb13e881983c2934fa4eda46b1455489ecf0c",
         arm64_linux:  "d3e87b5160f718132dd5a478cc7d18f09447d0ffe1991cf06a240bfc2b49ec2c",
         x86_64_linux: "ef865584cfd877e5798cb4bafab89458676efa504a4f9b8b091c5fb6cc8742c7"

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
