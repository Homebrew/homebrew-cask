cask :v1 => 'titanium-studio' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://titanium-studio.s3.amazonaws.com/latest/Titanium_Studio.dmg'
  homepage 'http://www.appcelerator.com/titanium/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :manual => 'Titanium Studio.app'
end
