cask "vv" do
  version "2.3.0"
  sha256 "8c1cc261f1dc5294530b20251ff67b24d4b93513542f6db9f5792a594f31cb97"

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
