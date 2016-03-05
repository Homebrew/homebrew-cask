cask 'wordpresscom' do
  version '1.2.7'
  sha256 'a7f833fee1385746eab108c58b44ff7b44a20d0cfbaf0f8ac006b420b74166a9'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable',
          checkpoint: 'b844f8153ce9bfff987d870b4864155a201f266dbf27fee00e61ca87a9ac3655'
  name 'WordPress.com'
  homepage 'https://desktop.wordpress.com/'
  license :gpl

  app 'WordPress.com.app'
end
