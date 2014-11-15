class Cask::Container::Ttf < Cask::Container::Naked
  def self.me?(criteria)
    (criteria.extension 'ttf' and
     (criteria.file.include? 'application/x-font-ttf' or
      criteria.magic_number(4, 'true'.unpack('C*')))) or

    (criteria.extension 'ttc' and
      criteria.magic_number(4, 'ttcf'.unpack('C*')))
  end
end
