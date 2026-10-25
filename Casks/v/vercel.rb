cask "vercel" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "65.3.1"
  sha256 arm:          "6a990e076eccf0a2dbfba5f80c7f293cd495b23fba245f1888cee9afd8e45efd",
         intel:        "4095aa4b3cbacc64aff8c3e63ba1e024fbcccea7a4de33d43f685f522281d153",
         arm64_linux:  "30b6bbabf9e1cde03401442e4061b493807490802b75e9e2e9c6522267a9324a",
         x86_64_linux: "99ee45eb4cb8551bb0c9a700e1f05f276494d88593ea3fc84f4bfe64ad2a9736"

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
