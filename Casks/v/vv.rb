cask "vv" do
  version "2.6.0"
  sha256 "2eabec088da81f601979663f86b5271751d42336f2e892dd4532ced433860d92"

  url "https://github.com/vv-vim/vv/releases/download/v#{version}/VV-#{version}-universal.dmg"
  name "VV"
  desc "Neovim client"
  homepage "https://github.com/vv-vim/vv"

  depends_on formula: "neovim"

  app "VV.app"
  binary "#{appdir}/VV.app/Contents/Resources/bin/vv"

  zap trash: "~/Library/Application Support/VV"
end
