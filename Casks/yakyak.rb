cask 'yakyak' do
  version '1.4.2'
  sha256 '3e83358dd23a8bd6739b10e8599d55b5664a99c40f30aac3bea8eb50fc9f6c2a'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: '613e22af7e08b46183349d4f22f5f8780d66f6c26441ddc725edcf39742b1add'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'yakyak-darwin-x64/Yakyak.app'
end
