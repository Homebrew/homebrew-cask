cask 'yate' do
  version '3.15.1'
  sha256 '162eff915a9c4fbbdaa703bf72ea6fced7983829d73dca79a2e2355a3f4717a9'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '47a5e356d04a19cdff5095db2af88ee88b2a0c9d14852da2d526fdd638a18260'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
