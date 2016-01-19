BEGIN{
    sample[0] = "NW";
    sample[1] = "SW";
    sample[2] = "SE";
#        template1 = "genomeCoverageBed -ibam /data/Mayra/Trimmed/headcrop/Sorted/sorted_%s%d.bam -bg -g /data/Mayra/BwaIndexZf/Taeniopygia_guttata.taeGut3.2.4.dna.toplevel.fa > /data/Mayra/Coverage/coverage%s%d.bedg";
#        template2 = "cat /data/Mayra/Coverage/coverage%s%d.bedg | awk '$4>4 {print}' > /data/Mayra/Coverage/c5_%s%d.bedg" 
        template3 = "cat /data/Mayra/Coverage/c5_%s%d.bedg | awk '{print$1\"\t\"$3-$2+1}' | cut -f 2 | awk '{sum+=$1} END {print \"%s%d = \", sum, sum/1222864721}'>> Average_genome_coverage.txt"
        for(i=1;i<=8;i++){
            for(j=0;j<3;j++){
                printf("Analyzing %s%d\n",sample[j],i);
#                cmd = sprintf(template1,sample[j],i,sample[j],i);
#                system(cmd);
#               print(cmd);                                                                                                                                                                                                                                                        
#                cmd = sprintf(template2,sample[j],i,sample[j],i);
#                system(cmd);
#               print(cmd);
		cmd = sprintf(template3,sample[j],i,sample[j],i);
                system(cmd);
#		print(cmd)
            }
        }
        for(i=9;i<=10;i++){
            for(j=0;j<2;j++){
                printf("Analyzing %s%d\n",sample[j],i);
#                cmd = sprintf(template1,sample[j],i,sample[j],i);
#                system(cmd);
#               print(cmd);                                                                                                                                                                                                                            
#                cmd = sprintf(template2,sample[j],i,sample[j],i);                                                  
#                system(cmd);                                                                                           
#               print(cmd);                          
		cmd = sprintf(template3,sample[j],i,sample[j],i);
		system(cmd);
#		print(cmd)
            }
        }
}

