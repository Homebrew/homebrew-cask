cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.86.0"
  sha256 arm:          "a482a55773540466654f67f3983c287aa2f856b8ad55053100c3c250f6acf033",
         x86_64:       "11bc841942a7ff1e3ebf6cb5519a9106e7196a17f756d72cf5cac1b37a4834c6",
         arm64_linux:  "aff55162909166f391d4804648d648f28e7e3cb16c9986251418728e1423e7e2",
         x86_64_linux: "77cd90149a1f7cb99e9f32e157346f5c5458459c1cb8167aefe87b003be752b2"

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
