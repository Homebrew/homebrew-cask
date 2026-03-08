cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.34.0"
  sha256 arm:          "e7bdc09e1d8e9ccc1c89757423f8b392e8079b10e6029e619d5f7203810113d2",
         x86_64:       "4003627f5276a20cdb6c558e66c9724500498a15ac8eb1de57635a16cfbeeb50",
         arm64_linux:  "5d0e758e2d598828d40e8835b4321632de5a169bcb5b0d6d3b79a1a67f7dd984",
         x86_64_linux: "9ff24fbd22b031bf5a634c79439fb93b8a41d5a3f0deb2e410a034c749c5ff81"

  url "https://downloads.wiz.io/v#{version.major}/wizcli/#{version}/wizcli-#{os}-#{arch}"
  name "Wiz CLI"
  desc "CLI for interacting with the Wiz platform"
  homepage "https://www.wiz.io/"

  livecheck do
    url "https://downloads.wiz.io/v#{version.major}/wizcli/latest/wizcli-version"
    regex(/cli:\s"(\d+(?:\.\d+)+)/i)
  end

  binary "wizcli-#{os}-#{arch}", target: "wizcli"

  zap trash: "~/.wiz"
end
