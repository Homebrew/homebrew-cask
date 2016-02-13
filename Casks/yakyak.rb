cask 'yakyak' do
  version '1.1.3'
  sha256 '28a7071a8ccbf1c7a74494fdf1976d579a70ea448ee762cb0f93d5b8f764c292'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-osx.app.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: '04d7b7e6418a9850be0312806c15cd34345c58f1238a3f2c205ac620b94cccb5'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'
  license :mit

  app 'Yakyak.app'
end
