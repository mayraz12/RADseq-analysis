BEGIN{
    sample[0] = "NW";
    sample[1] = "SW";
    sample[2] = "SE";
    jarFile = "/home/zamora/software/picard-tools-1.140/picard.jar";
    template1 = "java -jar %s MarkDuplicates I=/data/Mayra/Mapping/sorted_%s%d.bam O=/data/Mayra/Marking_Index/dedup_%s%d.bam METRICS_FILE=metrics.txt";
    template2 = "java -jar %s BuildBamIndex I=/data/Mayra/Marking_Index/dedup_%s%d.bam";
    for(i=1;i<=8;i++){
	for(j=0;j<3;j++){
	    printf("Analyzing %s%d\n",sample[j],i);
	    cmd = sprintf(template1,jarFile,sample[j],i,sample[j],i);
	    system(cmd);
	    cmd = sprintf(template2,jarFile,sample[j],i);
	    system(cmd);
	}
    }
    for(i=9;i<=10;i++){
	for(j=0;j<2;j++){
	    printf("Analyzing %s%d\n",sample[j],i);
	    cmd = sprintf(template1,jarFile,sample[j],i,sample[j],i);
	    system(cmd);
	    cmd = sprintf(template2,jarFile,sample[j],i);
	    system(cmd);
	}
    }
}
