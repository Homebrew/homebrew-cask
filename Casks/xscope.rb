cask :v1 => 'xscope' do
  version '4.1.4'
  sha256 '6617f7ec94e22d3e1e137bf6386188c827575e7778f8d1d69dce8817efa752f2'

  url "https://iconfactory.com/assets/software/xscope/xScope-#{version}.zip"
  appcast 'https://iconfactory.com/appcasts/xScope/appcast.xml',
          :sha256 => '29eaf2c30992f4c72e4a98d96ce912a1cfde16d751a6b68044ef3c116672d8eb'
  name 'xScope'
  homepage 'http://iconfactory.com/software/xscope'
  license :commercial

  app 'xScope.app'
end
