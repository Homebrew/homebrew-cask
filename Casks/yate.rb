cask 'yate' do
  version '4.6'
  sha256 '42415321c358aa3eb8de2030f779b821b8cf830c1ec04f6bc46a03eac0808d2c'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
