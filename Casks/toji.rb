cask 'toji' do
  version '1.1.0'
  sha256 '55af425637f50f1635afa7c2227faf90963511a1545ccc382d5e6727bba1cf8f'

  url "https://github.com/lvarayut/toji/releases/download/v#{version}/Toji-osx.zip"
  appcast 'https://github.com/lvarayut/toji/releases.atom',
          checkpoint: 'b08495ad3f1f328ed47f8f0e806efe30a4fde3c710c343de9c183553ceac7569'
  name 'Toji'
  homepage 'https://github.com/lvarayut/toji'

  app 'Toji.app'
end
