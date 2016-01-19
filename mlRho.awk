BEGIN{
    sample[0] = "NW";
    sample[1] = "SW";
    sample[2] = "SE";
    template = "samtools view -b /data/Mayra/Realigned/realigned_%s%d.bam 1 | samtools mpileup - | sam2pro -c 5 | formatPro; mlRho -M 0 | grep '^0' ";
    for(i=1;i<=8;i++){
	for(j=0;j<3;j++){
	    printf("%s%d\t",sample[j],i);
	    cmd = sprintf(template,sample[j],i);
	    system(cmd);
#	    print(cmd);
	}
    }
    for(i=9;i<=10;i++){
	for(j=0;j<2;j++){
	    printf("\t%s%d\t",sample[j],i);
	    cmd = sprintf(template,sample[j],i);
	    system(cmd);
#	    print(cmd);
	}
    }
}


