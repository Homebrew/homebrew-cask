cask 'yakyak' do
  version '1.4.1'
  sha256 '25f8660c9987320e98f71ed741ff43a5565636ae8d2ac3cbb7666bd2b63eb7d3'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: 'c211df9625e8e4dc399226a1d72fd8095c949d2c7f2036119ff1684ecbfa73f7'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'yakyak-darwin-x64/Yakyak.app'
end
