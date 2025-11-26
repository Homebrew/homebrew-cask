cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.106.0"
  sha256 arm:          "af3186e7ec412dd69418b119f8d4600a5596974383e8e77170a200903db24a2a",
         x86_64:       "a99d031d32a2e2fcf8db585c3fb30356f8f198fc6844f5a7fe6c2ade8e021d8c",
         arm64_linux:  "27d5420f9f0a3c0936e58aa88a2a79106f0c10918afe90c77f93cab1088f7618",
         x86_64_linux: "42862571746a694ecbc88ab4ea18586d7f12818bbf4c6bfdcec327b47ab7d015"

  url "https://downloads.wiz.io/wizcli/#{version}/wizcli-#{os}-#{arch}"
  name "Wiz CLI"
  desc "CLI for interacting with the Wiz platform"
  homepage "https://www.wiz.io/"

  livecheck do
    url "https://downloads.wiz.io/wizcli/latest/wizcli-version"
    regex(/cli:\s"(\d+(?:\.\d+)+)/i)
  end

  binary "wizcli-#{os}-#{arch}", target: "wizcli"

  zap trash: "~/.wiz"
end
