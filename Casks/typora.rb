cask 'typora' do
  version '0.9.9.6.2'
  sha256 'e37d2b0303bbed69aa39796a5d238b4d8ea143dfefb2643cdf772bb2d883822b'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '13d6c2b1722ac29bb43ec2bfea7f817f994d98aee13a31667111f5edfc055a0f'
  name 'Typora'
  homepage 'https://typora.io'
  license :gratis

  app 'Typora.app'
end
