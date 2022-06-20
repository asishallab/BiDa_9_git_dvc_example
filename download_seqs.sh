# Create a single Fasta file of 16S and another of 18S SSU rRNA Sequences

# 18S
cut -d ';' -f11 alpha_Monophyletische_Algengruppe.csv | \
  sed -e '1,2d' | \
  xargs wget -O nuclear_SSU_rRNA.fasta

# 16S
cut -d ';' -f12 alpha_Monophyletische_Algengruppe.csv | \
  sed -e '1d' | \
  xargs wget -O plastid_SSU_rRNA.fasta

