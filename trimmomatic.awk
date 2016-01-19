BEGIN{
    sample[0] = "NW";
    sample[1] = "SW";
    sample[2] = "SE";
    jarFile = "Trimmomatic/trimmomatic-0.32/trimmomatic-0.32.jar";
    template = "java -jar %s PE -phred64 /data/Mayra/samples/%s%d.1.fq /data/Mayra/samples/%s%d.2.fq /data/Mayra/Trimmed/headcrop/%s%dp.1.fq /data/Mayra/Trimmed/headcrop/%s%du.1.fq /data/Mayra/Trimmed/headcrop/%s%dp.2.fq /data/Mayra/Trimmed/headcrop/%s%du.2.fq ILLUMINACLIP:TruSeq3-PE-2.fa:2:30:10:8:T LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36 HEADCROP:7 TOPHRED33";
    for(i=1;i<=8;i++){
	for(j=0;j<3;j++){
	    printf("Analyzing %s%d\n",sample[j],i);
	    cmd = sprintf(template,jarFile,sample[j],i,sample[j],i,sample[j],i,sample[j],i,sample[j],i,sample[j],i);
	    system(cmd);
#	    print cmd;
	}
    }
    for(i=9;i<=10;i++){
	for(j=0;j<2;j++){
	    printf("Analyzing %s%d\n",sample[j],i);
	    cmd = sprintf(template,jarFile,sample[j],i,sample[j],i,sample[j],i,sample[j],i,sample[j],i,sample[j],i);
	    system(cmd);
#	    print cmd;
	}
    }
}
