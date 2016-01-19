BEGIN{
    sample[0] = "NW";
    sample[1] = "SW";
    sample[2] = "SE";
    ss[0] = "a";
    ss[1] = "s";
# theta
    template = "cat /data/MayraRotation/Profiles/%s%d_%s.dat | grep '^0' | perl -pe 's/</\t/g' | cut -f 4";
    for(i=0;i<2;i++){
	for(j=0;j<2;j++){
	    for(k=1;k<=10;k++){
		printf("%s%d_%s\t",sample[i],k,ss[j]);
		cmd = sprintf(template,sample[i],k,ss[j]);
		cmd | getline;
		printf("%.2f\n",$1*1000);
		close(cmd);
	    }
	}
    }
    for(i=2;i<3;i++){
	for(j=0;j<2;j++){
	    for(k=1;k<=8;k++){
		printf("%s%d_%s\t",sample[i],k,ss[j]);
		cmd = sprintf(template,sample[i],k,ss[j]);
		cmd | getline;
		printf("%.2f\n",$1*1000);
		close(cmd);
	    }
	}
    }
# Delta
    template = "cat /data/MayraRotation/Profiles/%s%d_%s.dat | tail -n +3 | perl -pe 's/</\t/g' | awk '{print $1 \"\t\" $5}' > %s%d_%s_delta.dat";
    for(i=0;i<2;i++){
	for(j=0;j<2;j++){
	    for(k=1;k<=10;k++){
		cmd = sprintf(template,sample[i],k,ss[j],sample[i],k,ss[j]);
		system(cmd);
	    }
	}
    }
    for(i=2;i<3;i++){
	for(j=0;j<2;j++){
	    for(k=1;k<=8;k++){
		cmd = sprintf(template,sample[i],k,ss[j],sample[i],k,ss[j]);
		system(cmd);
	    }
	}
    }
# Rho
    template = "cat /data/MayraRotation/Profiles/%s%d_%s.dat | tail -n +3 | perl -pe 's/</\t/g' | awk '{print $1 \"\t\" $8}' > %s%d_%s_rho.dat";
    for(i=0;i<2;i++){
	for(j=0;j<2;j++){
	    for(k=1;k<=10;k++){
		cmd = sprintf(template,sample[i],k,ss[j],sample[i],k,ss[j]);
		system(cmd);
	    }
	}
    }
    for(i=2;i<3;i++){
	for(j=0;j<2;j++){
	    for(k=1;k<=8;k++){
		cmd = sprintf(template,sample[i],k,ss[j],sample[i],k,ss[j]);
		system(cmd);
	    }
	}
    }
}


