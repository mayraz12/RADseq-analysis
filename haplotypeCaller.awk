BEGIN{
    sample[0] = "NW";
    sample[1] = "SW";
    sample[2] = "SE";
    jarFile = "/home/zamora/software/GenomeAnalysisTK.jar";
    refSeq = "/data/Mayra/BwaIndexZf/Taeniopygia_guttata.taeGut3.2.4.dna.toplevel.fa";
    template1 = "java -Xmx24g -jar %s -T HaplotypeCaller -R %s -I /data/Mayra/Realigned/realigned_%s%d.bam --emitRefConfidence GVCF --max_alternate_alleles 2 -o /data/Mayra/Realigned/KnownSites/raw_var_%s%d.g.vcf";
    for(i=1;i<=8;i++){
        for(j=0;j<3;j++){
            printf("Analyzing %s%d\n",sample[j],i);
	    system("date");
            cmd = sprintf(template1,jarFile,refSeq,sample[j],i,sample[j],i);
            system(cmd);
#           print(cmd);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
        }
    }
    for(i=9;i<=10;i++){
        for(j=0;j<2;j++){
            printf("Analyzing %s%d\n",sample[j],i);
	    system("date");
            cmd = sprintf(template1,jarFile,refSeq,sample[j],i,sample[j],i);
            system(cmd);
#           print(cmd);
	}
    }
    system("date");
}
