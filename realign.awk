BEGIN{
    sample[0] = "NW";
    sample[1] = "SW";
    sample[2] = "SE";
    jarFile = "/home/zamora/software/GenomeAnalysisTK.jar";
    refSeq = "/data/Mayra/BwaIndexZf/Taeniopygia_guttata.taeGut3.2.4.dna.toplevel.fa";
    template1 = "java -jar %s -nt 16 -T RealignerTargetCreator -R %s -I /data/Mayra/Marking_Index/dedup_%s%d.bam -o realignment_targets.list --fix_misencoded_quality_scores";
    template2 = "java -jar %s -T IndelRealigner         -R %s -I /data/Mayra/Marking_Index/dedup_%s%d.bam -targetIntervals realignment_targets.list -o /data/Mayra/Marking_Index/realigned_%s%d.bam --fix_misencoded_quality_scores";
    for(i=1;i<=8;i++){
	for(j=0;j<3;j++){
	    printf("Analyzing %s%d\n",sample[j],i);
	    cmd = sprintf(template1,jarFile,refSeq,sample[j],i);
	    system(cmd);
#	    print(cmd);
	    cmd = sprintf(template2,jarFile,refSeq,sample[j],i,sample[j],i);
	    system(cmd);
#	    print(cmd);
	}
    }
    for(i=9;i<=10;i++){
	for(j=0;j<2;j++){
	    printf("Analyzing %s%d\n",sample[j],i);
	    cmd = sprintf(template1,jarFile,refSeq,sample[j],i);
	    system(cmd);
#	    print(cmd);
	    cmd = sprintf(template2,jarFile,refSeq,sample[j],i,sample[j],i);
	    system(cmd);
#	    print(cmd);
	}
    }
}


