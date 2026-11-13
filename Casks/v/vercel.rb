cask "vercel" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "65.15.0"
  sha256 arm:          "5bfe77fb80fc2ca904798354140cf5aee79958e6b8dba6dcecf29e5822ef7cee",
         intel:        "8aecdce91068f1fba04e5b824bde51c75825a55946cc6499daaca356210e8f25",
         arm64_linux:  "3d6d156a3ef05ae394a9cc9b56375a1970a852efe4e8ce580aa77560f4299e76",
         x86_64_linux: "0afa6e0298d7ed653cd3dd679e2b7bd7d06a845193853cda03d55315472cd623"

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
