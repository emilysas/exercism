# * `G` -> `C`
# * `C` -> `G`
# * `T` -> `A`
# * `A` -> `U`

class Complement

  COMPLEMENT = {G: "C", C: "G", T: "A", A: "U"}

  def self.of_dna(nucleotide)
    COMPLEMENT[nucleotide.to_sym]
  end

end