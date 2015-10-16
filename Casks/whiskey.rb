cask :v1 => 'whiskey' do
  version :latest
  sha256 :no_check

  url 'http://usewhiskey.com/latest'
  name 'Whiskey'
  appcast 'http://usewhiskey.com/appcast.xml',
          :sha256 => '96dea545ba04bfa604924f6e2d995d3a71ca2ef16997f494724543f8c0b60ef4'
  homepage 'http://usewhiskey.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Whiskey.app'
end
