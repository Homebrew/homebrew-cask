cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.89.0"
  sha256 arm:          "1c57c7f2306f819da457b7e6d20592a7fdbca1bf22f9fc64e5bbd5f9ae9c81e5",
         x86_64:       "426f9c3de33f78a88a5cfeee381c298b519394f0c14ee9d61c53a2997bf79186",
         arm64_linux:  "5ebf1cf8c33edfeb1e9babd2d141bb0d5389993a676e0e2be57973d02f6992d6",
         x86_64_linux: "dddaf24ec429ba2ab5878d1acbcabf29c9396e42a3ef0f9cd201514b6ad288f3"

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
