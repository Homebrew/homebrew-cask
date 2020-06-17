cask 'yakyak' do
  version '1.5.7'
  sha256 '4fe6c97824cf90897035a7bcc612bf53caccc3844329c6e419aa4556b0f4794a'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'YakYak-darwin-x64/YakYak.app'
end
