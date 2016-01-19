BEGIN{
	sample[0] = "NW";
	sample[1] = "SW";
	sample[2] = "SE";
	jarFile = "/home/zamora/software/picard-tools-1.140/picard.jar";
	template1 = "date;bwa mem -M -R '@RG\\tID:%s\\tSM:sample%d\\tPL:illumina\\tLB:lib%d\\tPU:unit%d' -t 16 /data/Mayra/BwaIndexZf/zf /data/Mayra/Trimmed/headcrop/%s%dp.1.fq /data/Mayra/Trimmed/headcrop/%s%dp.2.fq > /home/zamora/trial/mapped/%s%d.sam";
#	template2 = "java -jar %s SortSam I=/data/Mayra/Trimmed/headcrop/%s%d.sam O=/data/Mayra/Trimmed/headcrop/Sorted/sorted_%s%d.bam SO=coordinate";
#	template3 = "java -jar %s BuildBamIndex I=/data/Mayra/Trimmed/headcrop/Sorted/sorted_%s%d.bam";
	for(i=1;i<=8;i++){
	    for(j=0;j<3;j++){
		printf("Analyzing %s%d\n",sample[j],i);
		cmd = sprintf(template1,sample[j],i,i,i,sample[j],i,sample[j],i,sample[j],i);
		system(cmd);
#		print(cmd);
#		cmd = sprintf(template2,jarFile,sample[j],i,sample[j],i);
#		system(cmd);
#		print(cmd);
#		cmd = sprintf(template3,jarFile,sample[j],i);
#		system(cmd);
#		cmd = sprintf("rm /data/Mayra/Trimmed/headcrop/%s%d.sam",sample[j],i);
#		system(cmd);
#		print(cmd);
	    }
	}
	for(i=9;i<=10;i++){
	    for(j=0;j<2;j++){
		printf("Analyzing %s%d\n",sample[j],i);
		cmd = sprintf(template1,sample[j],i,i,i,sample[j],i,sample[j],i,sample[j],i);
		system(cmd);
#		print(cmd);
#		cmd = sprintf(template2,jarFile,sample[j],i,sample[j],i);
#		system(cmd);
#		print(cmd);
#		cmd = sprintf(template3,jarFile,sample[j],i);
#		system(cmd);
#		cmd = sprintf("rm /data/Mayra/Trimmed/headcrop/%s%d.sam",sample[j],i);
#		system(cmd);
#		print(cmd);
	    }
	}
    }
