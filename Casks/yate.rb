cask 'yate' do
  version '3.17.1.1'
  sha256 '73474d2770fa45e9e429b2d815ab851cb6b306515385498440806e2f6f32febe'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: 'c06a35fb5f41bc6d409517167b2b9a7bdf3092bc6c3ac7289f64941e00b1dcac'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
