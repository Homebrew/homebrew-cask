cask :v1 => 'zeplin' do
  version :latest
  sha256 :no_check

  # zpl.io is the official download host per the vendor homepage
  url 'https://zpl.io/download'
  name 'Zeplin'
  homepage 'https://zeplin.io'
  license :freemium

  app 'Zeplin.app'
end
