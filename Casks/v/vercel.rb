cask "vercel" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "60.1.3"
  sha256 arm:          "16b9d32d0166493c0487e8f9bde7cceba67aa315f63052f62296d79f8e39bd86",
         intel:        "ae95fde52252a9df3250385fffb6b220f796dfdaafd0785b0b7fceb36d233b82",
         arm64_linux:  "b5789d5e5c06605f98742d1af05b3560805f3a24f9604016b1d50c03403f409c",
         x86_64_linux: "47e8947ba7eb372b9347a2d752553cdf0a0dffa67277aed88f96b30b61d017dd"

  on_macos do
    depends_on macos: :ventura
  end

  url "https://registry.npmjs.org/@vercel/vc-native-#{os}-#{arch}/-/vc-native-#{os}-#{arch}-#{version}.tgz"
  name "Vercel CLI"
  desc "Command-line interface for Vercel"
  homepage "https://vercel.com/docs/cli"

  livecheck do
    url "https://registry.npmjs.org/vercel/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  binary "package/bin/vercel"
  binary "package/bin/vercel", target: "vc"
end
