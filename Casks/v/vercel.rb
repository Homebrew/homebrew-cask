cask "vercel" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "65.8.0"
  sha256 arm:          "2854ab6144f535d844c62079c77d4b045b579101e53cbb18f1da5442551e3943",
         intel:        "defb891d189b52a5dca285edf0231cd1c212f7dd8d1691f53f62d1a34cb22f99",
         arm64_linux:  "07664001854127b4685e4bda89d22ff08393ab9974b18c1b1ec8eab49ebb72e3",
         x86_64_linux: "c4581b8f16e26f1f9e3162d0e9a06595e5baa3bc55dbc9d8a86455e55fba3bf3"

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
