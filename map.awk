BEGIN{
    tNw = "date;bwa mem -M -R '@RG\tID:NW\tSM:sample%d\tPL:illumina\tLB:lib%d\tPU:unit%d' -t 16 ../BwaIndexZf/zf ../samples/NW%d.1.fq ../samples/NW%d.2.fq > NW%d.sam";
    tSw = "date;bwa mem -M -R '@RG\tID:SW\tSM:sample%d\tPL:illumina\tLB:lib%d\tPU:unit%d' -t 16 ../BwaIndexZf/zf ../samples/SW%d.1.fq ../samples/SW%d.2.fq > SW%d.sam";
    tSe = "date;bwa mem -M -R '@RG\tID:SE\tSM:sample%d\tPL:illumina\tLB:lib%d\tPU:unit%d' -t 16 ../BwaIndexZf/zf ../samples/SE%d.1.fq ../samples/SE%d.2.fq > SE%d.sam";
    for(i=1;i<=8;i++){
	cNw = sprintf(tNw,i,i,i,i,i,i);
	cSw = sprintf(tSw,i,i,i,i,i,i);
	cSe = sprintf(tSe,i,i,i,i,i,i);
#	system(cNw);
#	system(cSw);
#	system(cSe);
	print(cNw);
	print(cSw);
	print(cSe);
    }
    for(i=9;i<=10;i++){
	cNw = sprintf(tNw,i,i,i,i,i,i);
	cSw = sprintf(tSw,i,i,i,i,i,i);
#	system(cNw);
#	system(cSw);
	print(cNw);
	print(cSw);
    }
}

