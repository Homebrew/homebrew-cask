cask 'zeplin' do
  version :latest
  sha256 :no_check

  # downloads can be found at https://zeplin.io/support.html#download
  # zpl.io is the official download host per the vendor homepage
  url 'https://zpl.io/download'
  name 'Zeplin'
  homepage 'https://zeplin.io'
  license :gratis

  app 'Zeplin.app'
end
