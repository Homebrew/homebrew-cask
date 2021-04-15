cask "vv" do
  version "2.4.1"
  sha256 "1b6238074bb12e5975f49e80083f4ab1851716feb3a85ab54d915f0b0c269759"

  url "https://github.com/vv-vim/vv/releases/download/v#{version}/VV-#{version}.dmg"
  name "VV"
  desc "Neovim client"
  homepage "https://github.com/vv-vim/vv"

  depends_on formula: "neovim"

  app "VV.app"
  binary "#{appdir}/VV.app/Contents/Resources/bin/vv"

  zap trash: "~/Library/Application Support/VV"
end
