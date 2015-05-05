# * `G` -> `C`
# * `C` -> `G`
# * `T` -> `A`
# * `A` -> `U`

class Complement

  COMPLEMENT = {G: "C", C: "G", T: "A", A: "U"}

  def self.of_dna(nucleotide)
    nucleotide.length > 1 ? complement_string(nucleotide) : return_complement(nucleotide)
  end

  def self.complement_string(nucleotide)
    nuc_array = nucleotide.chars()
    new_array = []
    nuc_array.each {|nuc| new_array << return_complement(nuc)}
    new_array.join()
  end

  def self.return_complement(nucleotide)
    COMPLEMENT[nucleotide.to_sym]
  end

end