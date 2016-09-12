require 'xdg'

class AClass
  def self.run
    XDG['DATA'].to_a.map(&:to_s).join("\n")
  end
end

puts AClass.run

