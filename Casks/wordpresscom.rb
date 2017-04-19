cask 'wordpresscom' do
  version '2.3.0'
  sha256 '95e6faa4d81c7bb7b70114e3094e0a78dcd3400af3525d425c3d3214c519e11f'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable',
          checkpoint: 'a3105289fe7f1aec303176ae98d6213774ee21cd83ed732a7002301d29839b50'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
