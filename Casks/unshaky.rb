cask 'unshaky' do
  version '0.2.6'
  sha256 'a282a6f760c77c97135dd3d1a6ae72c68a44ea616022ef924385c086a63a87d9'

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky.app.zip"
  appcast 'https://github.com/aahung/Unshaky/releases.atom'
  name 'Unshaky'
  homepage 'https://github.com/aahung/Unshaky'

  app 'Unshaky.app'
end
