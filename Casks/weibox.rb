cask :v1 => 'weibox' do
  version '2.6.1'
  sha256 '60c023ba7cc9f93ac72a7b1a4e8a518595348f4f6d8c4fbef0af8822c318a908'

  url "https://weiboformac.sinaapp.com/downloads/#{version}.release.zip"
  appcast 'http://weiboformac.sinaapp.com/appcast/wm2.xml',
          :sha256 => '2aefd31728fb15674f7afd1bc2fd4b47f42b6720227f2ee81b8a6d80344815c3'
  homepage 'http://weiboformac.sinaapp.com'
  license :unknown

  app 'WeiboX.app'
end
