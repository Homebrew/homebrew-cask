class Vuescan < Cask
  if Hardware::CPU.is_64_bit?
    url 'http://www.hamrick.com/files/vuex6494.dmg'
    sha256 'e8c601f36905a689a149d4cd2eea12a74022d4243ea2d2f027153a50df563a5d'
  else
    url 'http://www.hamrick.com/files/vuex3294.dmg'
    sha256 '6345727c6a2cc5a835c28af7a7c4ce3b602cf6157d364f237b1ab4245a3d6781'
  end
  homepage 'http://www.hamrick.com'
  version '9.4.32'
  link 'VueScan.app'
end
