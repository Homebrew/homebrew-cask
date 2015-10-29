cask :v1 => 'yakyak' do
  version '1.1.0'
  sha256 'f98f9487a0bd12bf145b5456505dabecf6dc750db76242a8c02d51a1836c3615'

  url 'https://github.com/yakyak/yakyak/releases/download/v1.1.0/yakyak-osx.app.zip'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Yakyak.app'
end
