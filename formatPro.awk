BEGIN{
    sample[0] = "NW";
    sample[1] = "SW";
    sample[2] = "SE";
    template1 = "nohup samtools view -b ../Realigned/realigned_%s%d.bam 1 10 11 12 13 14 15 16 17 18 19 1A 1B 2 20 21 22 23 24 25 26 27 28 3 4 4A 5 6 7 8 9 | samtools mpileup - | sam2pro -c 5 | formatPro -n %s%d_a > %s%d_a.log &";
    template2 = "nohup samtools view -b ../Realigned/realigned_%s%d.bam Z | samtools mpileup - | sam2pro -c 5 | formatPro -n %s%d_s > %s%d_s.log &";
    for(i=1;i<=8;i++){
	for(j=0;j<3;j++){
#	    printf("Analyzing %s%d\n",sample[j],i);
	    cmd = sprintf(template1,sample[j],i,sample[j],i,sample[j],i);
	    system(cmd);
	    cmd = sprintf(template2,sample[j],i,sample[j],i,sample[j],i);
	    system(cmd);
#	    print(cmd);
	}
    }
    for(i=9;i<=10;i++){
	for(j=0;j<2;j++){
#	    printf("Analyzing %s%d\n",sample[j],i);
	    cmd = sprintf(template1,sample[j],i,sample[j],i,sample[j],i);
	    system(cmd);
	    cmd = sprintf(template2,sample[j],i,sample[j],i,sample[j],i);
	    system(cmd);
#	    print(cmd);
	}
    }
}


