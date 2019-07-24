## 01_12_2018
## JO
## Script to download all R packges for new mac cascade9

# Load file - N.B change file loaction
file = "r-packages/rPackages.txt"
readLines(file)

# Can't update these base packages
base = c('base', 'compiler', 'datasets', 'grDevices', 'graphics', 'grid', 'methods', 'parallel', 'splines', 'stats', 'stats4', 'tcltk', 'tools', 'utils')

# Need to use bioc installer to update
bioc = c('AnnotationDbi', 'Biobase', 'BiocGenerics', 'BiocInstaller', 'BiocParallel', 'Biostrings', 'ComplexHeatmap', 'ConsensusClusterPlus', 'DESeq2', 'DelayedArray', 'FlowSOM', 'GO.db', 'GenomeInfoDb', 'GenomeInfoDbData', 'GenomicAlignments', 'GenomicFeatures', 'GenomicRanges', 'IRanges', 'RBGL', 'RCytoscape', 'RNASeqPower', 'Rphenograph', 'Rsamtools', 'S4Vectors', 'ShortRead', 'SummarizedExperiment', 'TxDb.Mmusculus.UCSC.mm10.knownGene', 'Vennerable', 'XMLRPC', 'XVector', 'affy', 'affyio', 'annotate', 'base', 'biomaRt', 'compiler', 'datasets', 'flowCore', 'flowUtils', 'genefilter', 'geneplotter', 'grDevices', 'graph', 'graphics', 'grid', 'limma', 'methods', 'org.Hs.eg.db', 'org.Mm.eg.db', 'parallel', 'preprocessCore', 'rtracklayer', 'shinyTable', 'splines', 'stats', 'stats4', 'tcltk', 'tools', 'topGO', 'translations', 'utils', 'vsn', 'zlibbioc')

# Remove from list
r_p = setdiff(r_packages, base)
r_p = setdiff(r_p, bioc)

# Install command
install.packages(r_p)

# Install bioconductor packages
if (!requireNamespace("BiocManager"))
install.packages("BiocManager")
BiocManager::install()

BiocManager::install(bioc)
