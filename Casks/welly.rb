cask 'welly' do
  version '3.1.1.1'
  sha256 'f17aa74d8668d02ff7c6eee81ae7e0c06d76a51d4aa50624ffe757c95f498ecf'

  url "https://github.com/clyang/welly/releases/download/#{version}/Welly.v#{version}.zip"
  appcast 'https://github.com/clyang/welly/releases.atom'
  name 'Welly'
  homepage 'https://github.com/clyang/welly'

  app 'Welly.app'
end
