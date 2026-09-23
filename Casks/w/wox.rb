cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.5"
  sha256 arm:   "6c03a238344aa789fecabd3164217240e5aa1ac9da40fadd01181f30d6bb8f25",
         intel: "cd45839ff75848d08601f9bfbb84014606b729bc2e4e76d124af3743f4d5e74f"

  url "https://github.com/Wox-launcher/Wox/releases/download/v#{version}/wox-mac-#{arch}.dmg"
  name "Wox"
  desc "Launcher tool"
  homepage "https://github.com/Wox-launcher/Wox"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :monterey

  app "Wox.app"

  zap trash: "~/.wox"
end
