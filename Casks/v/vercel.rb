cask "vercel" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "64.5.0"
  sha256 arm:          "6681ced8adecebb8f6a7d3bb0358eba0e9aea9de7834621407f50e4752421355",
         intel:        "a13968de1d169adc734b27c8e10ae36d281943aa045847ed6c92ce9482039c16",
         arm64_linux:  "6aef6531c7c9bada3f67e2015933500926800776941b8f04ad0eea8638661071",
         x86_64_linux: "99fef675eeae501d87e3b1624dd0d198d4e4e39838f06bb4e7ffb69a82821eee"

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
