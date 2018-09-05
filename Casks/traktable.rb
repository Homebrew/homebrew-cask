cask 'traktable' do
  version '0.6-alpha1,a'
  sha256 '6bf5b2e30e8378d46e5c69494bc23617a3f410856ee4682899683607cb0dee79'

  # github.com/yo-han/Traktable was verified as official when first introduced to the cask
  url "https://github.com/yo-han/Traktable/releases/download/#{version.before_comma}/Traktable-#{version.before_comma}#{version.after_comma}.zip"
  appcast 'https://github.com/yo-han/Traktable/releases.atom'
  name 'Traktable'
  homepage 'https://yo-han.github.io/Traktable/'

  app 'Traktable.app'
end
