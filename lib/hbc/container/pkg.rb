class Hbc::Container::Pkg < Hbc::Container::Naked
  def self.me?(criteria)
    (criteria.extension('pkg') ||
     criteria.extension('mpkg')) &&
      (criteria.file.include?('application/x-directory') ||
       criteria.magic_number(0, 4, 'xar!'))
  end
end
