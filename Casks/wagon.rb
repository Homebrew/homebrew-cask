cask :v1 => 'wagon' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://wagon.s3.amazonaws.com/Wagon.zip'
  name 'Wagon'
  homepage 'https://app.wagonhq.com/'
  license :unknown

  app 'Wagon.app'
end
