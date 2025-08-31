cask "vv" do
  version "2.6.2"
  sha256 "87fcc6b32ba68675974dc5771c99d73f71be23db20b5e47ea830d6e414edbd91"

  url "https://github.com/vv-vim/vv/releases/download/v#{version}/VV-#{version}-universal.dmg"
  name "VV"
  desc "Neovim client"
  homepage "https://github.com/vv-vim/vv"

  depends_on formula: "neovim"
  depends_on macos: ">= :catalina"

  app "VV.app"
  binary "#{appdir}/VV.app/Contents/Resources/bin/vv"

  zap trash: "~/Library/Application Support/VV"
end
