cask 'wordpresscom' do
  version '1.4.0'
  sha256 'c1bcedae572caf6b5aaedeb9448f0ac4155b338d308f99d12ea449b9d9e43550'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable',
          checkpoint: '67c301ee7c79b1c161c3d0a8691d267032489baf850ba8aecc4b9f5f3dcc3d87'
  name 'WordPress.com'
  homepage 'https://desktop.wordpress.com/'
  license :gpl

  app 'WordPress.com.app'
end
