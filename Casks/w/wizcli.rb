cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.52.0"
  sha256 arm:          "92b7c44e32223cf47ef2d45d0bd9425a0258b73463ac20e0e9e56bc59a70bf59",
         x86_64:       "cf98affb14559321ee4802f16b4accc47e0d355b01a0d4683f9cc0f062da6ed7",
         arm64_linux:  "5ed912053b517ca2b68dcd33396ab989dda6840b7189799bbb5bdf8d9e2d2ee2",
         x86_64_linux: "572513859b9330e6579c8768b28e9267f41f7198d4bb3e34215dce7eaf1b177f"

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
