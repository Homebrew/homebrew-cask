cask :v1 => 'yorufukurou' do
  version :latest
  sha256 :no_check

  # null.net is the official download host per the vendor homepage
  url 'http://aki-null.net/yf/YoruFukurou_SL.zip'
  appcast 'http://sites.google.com/site/yorufukurou/distribution/appcast.xml'
  homepage 'https://sites.google.com/site/yorufukurou/home-en'
  license :gratis

  app 'YoruFukurou.app'
end
