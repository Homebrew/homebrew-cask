cask :v1 => 'tau' do
  version :latest
  sha256 :no_check

  url 'http://tau.uoregon.edu/tau.dmg'
  homepage 'http://tau.uoregon.edu/'
  license :unknown    # todo: improve this machine-generated value

  suite 'TAU'
end
