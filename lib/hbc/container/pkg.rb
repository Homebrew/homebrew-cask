class Hbc::Container::Pkg < Hbc::Container::Naked
  def self.me?(criteria)
    (criteria.extension('pkg') ||
     criteria.extension('mpkg')) &&
      (criteria.file.include?('application/x-directory') ||
       criteria.magic_number(4, 'xar!'.unpack('C*')))
  end
end
