BEGIN{
    sample[0] = "NW";
    sample[1] = "SW";
    sample[2] = "SE";
        template1 = "genomeCoverageBed -ibam /data/Mayra/Trimmed/headcrop/Sorted/sorted_%s%d.bam -d -g /data/Mayra/BwaIndexZf/Taeniopygia_guttata.taeGut3.2.4.dna.toplevel.fa > /data/Mayra/Coverage/Coverage_base/coverage%s%d.bedg";
        template2 = "cat /data/Mayra/Coverage/Coverage_base/coverage%s%d.bedg | awk '$3>0 {print}'| awk '{sum+=$3} END {print \"sum %s%d = \",sum, \"Average Sample %s%d = \",sum/NR}'>> /data/Mayra/Coverage/Coverage_base/Averagedepht_mapped.txt" 
	template3 = "rm /data/Mayra/Coverage/Coverage_base/coverage%s%d.bedg"
        for(i=1;i<=8;i++){
            for(j=0;j<3;j++){
                printf("Analyzing %s%d\n",sample[j],i);
                cmd = sprintf(template1,sample[j],i,sample[j],i);
                system(cmd);
#               print(cmd);                                                                                                                                                                                                                                                        
                cmd = sprintf(template2,sample[j],i,sample[j],i,sample[j],i);
                system(cmd);
#               print(cmd);
		cmd = sprintf(template3,sample[j],i);
                system(cmd);
#		print(cmd)
            }
        }
        for(i=9;i<=10;i++){
            for(j=0;j<2;j++){
                printf("Analyzing %s%d\n",sample[j],i);
                cmd = sprintf(template1,sample[j],i,sample[j],i);
                system(cmd);
#               print(cmd);                                                                                                                                                                                                                            
                cmd = sprintf(template2,sample[j],i,sample[j],i,sample[j],i);                                                  
                system(cmd);                                                                                           
#               print(cmd);                          
		cmd = sprintf(template3,sample[j],i);
		system(cmd);
#		print(cmd)
            }
        }
}

