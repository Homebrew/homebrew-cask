cask 'washedoutco-katana' do
  version '1.1.1'
  sha256 'bb618628bd335c60dab87bc82c4e5d72df8e80e0baf5510c861962afda915fbc'

  url "https://github.com/washedoutco/katana/releases/download/v#{version}/katana-#{version}-mac.zip"
  appcast 'https://github.com/washedoutco/katana/releases.atom',
          checkpoint: '39ca93772f2b3236537672f582296ce6eeafc652807ec475a11728d370ced13c'
  name 'Katana'
  homepage 'https://github.com/washedoutco/katana/'

  app 'Katana.app'
end
