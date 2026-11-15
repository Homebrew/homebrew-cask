cask "vercel" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "65.16.0"
  sha256 arm:          "a746a2b8c776d6ef0f3fe4a0399244a18dabc60e328ee47200c28fdf10043613",
         intel:        "d44acb79bb323cb5035b9e11004d4c026c0ebc00ddad4890b2639f758cf1eebc",
         arm64_linux:  "1e4dd12aef31d4211071aca527d94fbe7218a0aa64b772a1d4b2a96574e35aaf",
         x86_64_linux: "fadada3264cbbef3fe2bb2393b393292319a82e980bf37dac42e9a55f7dbff82"

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
