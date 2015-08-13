cask :v1 => 'zeplin' do
  version :latest
  sha256 :no_check

  url 'https://zpl.io/download'
  name 'Zeplin'
  homepage 'https://zeplin.io/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Zeplin.app'
end
