##########################################################
# USAGE:
# 	count_fastq_reads.sh FASTQ_FILE
# 
# Counts how many reads are in a FASTQ file. 
##########################################################

FASTQ_FILE=$1

if [[ $FASTQ_FILE =~ \.gz$ ]]; then
    zcat "$FASTQ_FILE" | grep  "^@" | wc -l
else
    cat "$FASTQ_FILE" | grep  "^@" | wc -l
fi
