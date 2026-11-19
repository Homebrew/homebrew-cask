cask "vercel" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "66.2.0"
  sha256 arm:          "c9662d3a8f986acc5d2a9805e064c80a2d4dd0791393b62983f48c4928c2b805",
         intel:        "1585e0b3212964e93f0a2a065bed5c6e882b1891e442cbd25c0e2c7b8df512d7",
         arm64_linux:  "eb239b4e05dfb8fba79ff32763cfde164771019df466cee4c353e41ad2672ea4",
         x86_64_linux: "7146d9e2104ccf865e31be241f8c057fadeff8ffad130ec1d0afab3406e2ed1a"

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
