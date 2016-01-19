BEGIN{
    sample[0] = "NW";
    sample[1] = "SW";
    sample[2] = "SE";
    template1 = "samtools view -H /data/Mayra/Realigned/realigned_%s%d.bam | sed -e 's/SM:/SM:%s%d_/' | sed -e 's/PU:/PU:%s%d_/' |samtools reheader - /data/Mayra/Realigned/realigned_%s%d.bam > /data/Mayra/Realigned/reheadered/realigned_%s%d.bam";
    for(i=1;i<=8;i++){
        for(j=0;j<3;j++){
            printf("Analyzing %s%d\n",sample[j],i);
            cmd = sprintf(template1,sample[j],i,sample[j],i,sample[j],i,sample[j],i,sample[j],i);
            system(cmd);
#           print(cmd);                                                                                                                                                                                                                                                                                                                                                                                                                                                  
        }
    }
    for(i=9;i<=10;i++){
        for(j=0;j<2;j++){
            printf("Analyzing %s%d\n",sample[j],i);
            cmd = sprintf(template1,sample[j],i,sample[j],i,sample[j],i,sample[j],i,sample[j],i);
            system(cmd);
#           print(cmd);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
        }
    }
}
