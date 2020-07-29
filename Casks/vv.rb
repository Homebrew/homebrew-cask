cask "vv" do
  version "2.2.2"
  sha256 "e30e8481930809ae5ac18f69c88d39a3b516bc1b3054ed06d55cd754fed31677"

  url "https://github.com/vv-vim/vv/releases/download/v#{version}/VV-#{version}.dmg"
  appcast "https://github.com/vv-vim/vv/releases.atom"
  name "VV"
  homepage "https://github.com/vv-vim/vv"

  depends_on formula: "neovim"

<<<<<<< HEAD
  app 'VV.app'
  binary 'VV.app/Contents/Resources/bin/vv'
=======
  app "VV.app"
  binary "#{appdir}/VV.app/Contents/Resources/bin/vv"
>>>>>>> upstream/core-code-patch-2

  zap trash: "~/Library/Application Support/VV"
end
