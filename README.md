# Diversification Times of the *Dendropsophus leucophyllatus* Group

## Introduction
The *Dendropsophus leucophyllatus* group, belonging to the order Anura, consists of 19 currently described species, which are distributed from Central America to the Atlantic Forest of Brazil. The purpose of this study is to conduct a taxonomic review to understand how the species within this group are related. To achieve this, we utilized gene sequences obtained from previous studies available on GenBank, both mitochondrial and nuclear. The current project will help us build phylogenies to understand interspecific relationships and also obtain timelines to highlight lineage divergence times. This information will aid in future morphological and bioacoustic comparisons of the species, potentially uncovering new clades and describing possible new species.
This project focuses on analyzing the diversification times of the *Dendropsophus leucophyllatus* group. Using bioinformatics tools, we aim to infer the divergence times of these species to better understand their evolution.

![*Dendropsophus ebraccatus*](https://lh5.ggpht.com/cDYyS4pfvgoyQBuV6Wqe3um51wUNlCAEIUAj6rA8PtltGZNaU9RDyVDQoTrANtTJacP28wKe8bLMgt1sTgU=s580)

## Justification

This project is justified by the need to understand the evolutionary processes of the *Dendropsophus leucophyllatus* group. Identifying the divergence times of these species provides valuable information about their evolution and adaptation, which is crucial for biodiversity conservation and study.

For more details on the methodology and results of our research, please refer to the additional documentation in this repository.

## Program Operation

In this repository, there is a script created in Git Bash using the command `nano script.sh`. This script is designed to automate the sequence alignment process and the creation of the diversification chronogram. Below is a description of how the script works:

### Sequence Alignment with MAFFT

The script uses MAFFT to align the DNA sequences from different genes. MAFFT is an efficient tool for multiple sequence alignment and is ideal for our purposes.

### Diversification Chronogram Creation with IQ-TREE

After aligning the sequences, the script uses IQ-TREE to create a diversification chronogram. IQ-TREE is a powerful tool for maximum likelihood-based phylogenetic inference, allowing us to estimate the divergence times of the species of interest.

:\   
<iframe width="958" height="539" src="https://www.youtube.com/embed/jvVJLemaQl8" title="IQTree Tutorial - Beginner" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>


### For Loop

The process is carried out within a `for` loop, iterating through all sequences of the specified genes (16S, COI, CYTB, SIAH, RHO, TYR). For each gene, the script follows these steps:

1. **Sequence Trimming**: The script trims DNA sequences to remove unwanted regions.
2. **Sequence Alignment**: It uses MAFFT to align the trimmed sequences.
3. **Phylogenetic Inference**: It uses IQ-TREE to infer a phylogenetic tree and estimate diversification times.
4. **Chronogram Generation**: Based on the phylogenetic tree, a chronogram is generated showing species divergence times.

## Usage Instructions

### Requirements

For the script to work correctly, you need to have MAFFT and IQ-TREE programs in the same folder along with the gene sequence files to be aligned. The gene files should be in `.fasta` format.

### Setup and Execution Steps

1. Make sure MAFFT and IQ-TREE are installed on your system.
2. Download or place the DNA sequence files in `.fasta` format in a specific folder. Ensure that the file names match those listed in the script.
3. Place the `mafft` and `iqtree` programs in the same folder as the `.fasta` files.
4. Edit the Script: Open Git Bash and navigate to the folder where the downloaded script is located using the command `cd /ruta/a/tu/carpeta/`.
5. Run the script using the command `bash script.sh`.

The script will handle the entire process automatically, from sequence alignment to creating the diversification chronogram for each gene.

## Expected Outputs
We expect to obtain alignments of our raw sequence data from 7 genes in `.fasta` format. Additionally, we expect to obtain files with the best evolutionary models for our phylogenies; a `.treefile` where we will obtain a consensus tree for each gene to compare differences; `.log` files containing all the information used by the program for the corresponding analyses, and `.timetree` files corresponding to the species diversification chronogram, calibrated with an outgroup root of 37.8 million years (data obtained from the literature).


![Output Example](https://multimedia20stg.blob.core.windows.net/especies/1428Captura%20de%20pantalla%202022-12-21%20a%20las%2010.53.50.png)

![Output Example](https://multimedia20stg.blob.core.windows.net/especies/1428Captura%20de%20pantalla%202022-12-21%20a%20las%2010.53.50.png)

## Authors

Doménica Aguirre and Emilia Luzuriaga
This script was created as the final project for Bioinformatics, PUCE, 2024

## Acknowledgements

We thank **Daniel Chavez** for his guidance and support during the development of this project.

![Species from *Dendropsophus leucophyllatus* group](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV7GwwGu5dpZXXXhKOv7gD-HfquoRpbz3Y6Q&s)
