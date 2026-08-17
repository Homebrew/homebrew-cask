cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.69.0"
  sha256 arm:          "4dd245f50a2b0b18993cf8fdf676a8e0408acd461880d30d1f895115eda51a20",
         intel:        "756f9f00b1c2cc714bcc05f9d336e77908aa11b1ac89a4cb7743680067b821c8",
         arm64_linux:  "815e1e5b41f62f684b30970c0c9fd590f111377adb45fee5c850ef5cd327c695",
         x86_64_linux: "f2e91903546702e43f61af3445677f999e95e2672dc68748d4fb7d1b9023f99f"

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
