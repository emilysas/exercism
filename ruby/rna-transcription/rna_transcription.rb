# * `G` -> `C`
# * `C` -> `G`
# * `T` -> `A`
# * `A` -> `U`

class Complement

  COMPLEMENT = {G: "C", C: "G", T: "A", A: "U"}

  def self.of_dna(nucleotide)
    nucleotide.length > 1 ? complement_rna_string(nucleotide) : rna_complement(nucleotide)
  end

  def self.of_rna(nucleotide)
    nucleotide.length > 1 ? complement_dna_string(nucleotide) : dna_complement(nucleotide)
  end

  def self.complement_rna_string(nucleotide)
    nuc_array = nucleotide.chars()
    new_array = []
    nuc_array.each {|nuc| new_array << rna_complement(nuc)}
    new_array.join()
  end

  def self.complement_dna_string(nucleotide)
    nuc_array = nucleotide.chars()
    new_array = []
    nuc_array.each {|nuc| new_array << dna_complement(nuc)}
    new_array.join()
  end

  def self.rna_complement(nucleotide)
    nuc = COMPLEMENT[nucleotide.to_sym]
    unless nuc
      raise ArgumentError.new("This is not a valid nucleotide")
    end
    nuc
  end

  def self.dna_complement(nucleotide)
    nuc = COMPLEMENT.key(nucleotide)
    unless nuc
      raise ArgumentError.new("This is not a valid nucleotide")
    end
    nuc.to_s
  end

end