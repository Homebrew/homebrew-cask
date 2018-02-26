cask 'xca' do
  version '1.4.0'
  sha256 '21d3f6e8199918173a188987de093dc9f16a867ccefb8c348950bb7d843cb1d8'

  url "https://downloads.sourceforge.net/xca/xca/#{version}/xca-#{version}-Sierra.dmg"
  appcast 'https://sourceforge.net/projects/xca/rss?path=/xca',
          checkpoint: '648050906eff1ff308cc4011bdb9ba6871b30b6294fbe04226d22f678b10ac3a'
  name 'XCA'
  homepage 'http://xca.sourceforge.net/'

  app 'xca.app'
end
