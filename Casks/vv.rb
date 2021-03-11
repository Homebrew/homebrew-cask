cask "vv" do
  version "2.4.0"
  sha256 "b06ea0fb6604f0aa12f7b5deb4443e622be025ceb83a4d4537c8055922b267a0"

  url "https://github.com/vv-vim/vv/releases/download/v#{version}/VV-#{version}.dmg"
  appcast "https://github.com/vv-vim/vv/releases.atom"
  name "VV"
  desc "Neovim client"
  homepage "https://github.com/vv-vim/vv"

  depends_on formula: "neovim"

  app "VV.app"
  binary "#{appdir}/VV.app/Contents/Resources/bin/vv"

  zap trash: "~/Library/Application Support/VV"
end
