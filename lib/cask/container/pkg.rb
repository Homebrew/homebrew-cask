class Cask::Container::Pkg < Cask::Container::Naked
  def self.me?(criteria)
    (criteria.extension 'pkg' or criteria.extension 'mpkg') and
      (criteria.file.include? 'application/x-directory' or
       criteria.magic_number(4, 'xar!'.unpack('C*')))
  end
end
