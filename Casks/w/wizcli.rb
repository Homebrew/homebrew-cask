cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.27.0"
  sha256 arm:          "b5c6e6f370ecbb642cb8fa629fa2602a4b4e213e332fce4798afa89d4ddc2fc5",
         x86_64:       "4e1f0d83077b2cc1744bc8e910ab6afe41f8dd951c40e3f526efe3b63de30937",
         arm64_linux:  "c069d49b8509870aef98bc2db4229f9c4f572bcddf052d664bbeaf6239810b6a",
         x86_64_linux: "5b3262dca50dd06e4b3042a8ea70a96539dc75338f6d003f9973a43d58548f5d"

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
