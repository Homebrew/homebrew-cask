cask :v1 => 'texpad' do
  version '1.6.14'
  sha256 '18fcbe93e77e5b5bc848172546962fcde397a26fd543efcc1054004369192f7e'

  url "https://cloud.texpadapp.com/bundles/Texpad_#{version.gsub('.','_')}.zip"
  appcast 'https://www.texpadapp.com/static-collected/upgrades/texpadappcast.xml',
          :sha256 => 'a8522a4533df93fbf9d50489aa5f1c91bb01916faebd81ee20f56ea96dad8d97'
  homepage 'https://www.texpadapp.com/osx'
  license :unknown    # todo: improve this machine-generated value

  app 'Texpad.app'
end
