cask "vv" do
  version "2.4.2"
  sha256 "f0cb4b2a61b93ce5c4e14059e6e6cef6761db14dc2eb97a8f4b3811d941567c5"

  url "https://github.com/vv-vim/vv/releases/download/v#{version}/VV-#{version}.dmg"
  name "VV"
  desc "Neovim client"
  homepage "https://github.com/vv-vim/vv"

  depends_on formula: "neovim"

  app "VV.app"
  binary "#{appdir}/VV.app/Contents/Resources/bin/vv"

  zap trash: "~/Library/Application Support/VV"
end
