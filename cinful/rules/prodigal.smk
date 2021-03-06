SAMPLES, = glob_wildcards("{sample}.fna")

# rule final:
# 	input:
# 		expand("cinfulOut/01_orf_homology/{sample}_prodigal/{sample}.faa", sample = SAMPLES)

rule prodigal:
	input:
		"{sample}.fna"
	output:
		gff3="cinfulOut/01_orf_homology/{sample}_prodigal/{sample}.gff3",
		aa="cinfulOut/01_orf_homology/{sample}_prodigal/{sample}.faa"
	shell:
		"prodigal -i {input} -o {output.gff3} -a {output.aa}"