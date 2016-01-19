BEGIN{
    sample[0] = "NW";
    sample[1] = "SW";
    sample[2] = "SE";
    refSeq = "/data/Mayra/FST/Q20_DP10.recode.vcf";
    template1 = "vcftools --vcf %s --weir-fst-pop /data/Mayra/FST/%s.list --weir-fst-pop /data/Mayra/FST/%s.list --recode --out /data/Mayra/FST/Q20/%s_%s_Q_DP";
    template2 = "vcftools --vcf %s --weir-fst-pop /data/Mayra/FST/%s.list --weir-fst-pop /data/Mayra/FST/%s.list --fst-window-size 200000 --fst-window-step 20000 --recode --out /data/Mayra/FST/Q20/%s_%s_Q_DP_window";

    {

	cmd = sprintf(template1,refSeq,sample[0],sample[1],sample[0],sample[1]);
	system(cmd);
#           print(cmd);                                                                                                                                                                                                                                                             
	cmd = sprintf(template1,refSeq,sample[0],sample[2],sample[0],sample[2]);
	system(cmd);
#           print(cmd);                                                                                                                                                                                                                                                             
	cmd = sprintf(template1,refSeq,sample[2],sample[1],sample[2],sample[1]);
	system(cmd);
#           print(cmd);                                                                                                                                                                                                                                                             
	cmd = sprintf(template2,refSeq,sample[0],sample[1],sample[0],sample[1]);
	system(cmd);
#           print(cmd);                                                                                                                                                                                                                                                             
	cmd = sprintf(template2,refSeq,sample[0],sample[2],sample[0],sample[2]);
	system(cmd);
#           print(cmd);                                                                                                                                                                                                                                                             
	cmd = sprintf(template2,refSeq,sample[2],sample[1],sample[2],sample[1]);
	system(cmd);
#           print(cmd);                                                                                                                                                                                                                                                             

    }
}
