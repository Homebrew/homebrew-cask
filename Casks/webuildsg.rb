cask :v1 => 'webuildsg' do
  version '1.0.2'
  sha256 '8b64c3bbf16818a8e1daa5043fedfffab59a3e07085dd5a87f3366a9b5748971'

  url "https://github.com/webuildsg/osx/releases/download/v#{version}/WeBuildSG.app.zip"
  appcast 'https://github.com/webuildsg/osx/releases.atom'
  name 'We Build SG'
  homepage 'https://github.com/webuildsg/osx'
  license :mit

  app 'WeBuildSG.app'
end
