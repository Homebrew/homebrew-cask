cask "vercel" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "67.0.0"
  sha256 arm:          "a70791fa50b7de52c403b832c2f4d7ba2646f9ac26afeab2d09de449bfa5c220",
         intel:        "5fcd2505a5668d11a24a71a5a5147de4f2e2da5a4b58adcc24e0342b80de423e",
         arm64_linux:  "83bc64079a629dcdee93aab09d793a9afc9fa1c1346e6989078deff13bcccc5b",
         x86_64_linux: "99de1ad6a673b31b9f4721198234f8484302065deba839a0378c0c268fb778d2"

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
