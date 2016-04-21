 #!/usr/bin/perl
use strict;
print "Enter number between 2 and 1,000,000: ";
my $o = 2;
my $e = <STDIN>;
chomp($e);
my @prime;
my @prime_final;
my $primus_count=0;
if (!($e =~ /^[0-9]+$/) ) { 
  print STDERR  "$e is not a integer number\n";  
}elsif($e<2 || $e>1000000 ){
    print STDERR "number out of range of 2 and 1.000.000";
}else{

   for(my $i=$o; $i<=$e; $i++){
    my $p=0;
    # get 
        for(my $j=1; $j<=$i; $j++){
            if($i % $j==0){
                #save remainder
                $prime[$p] = "$j";
                $p++;
            }
            #print  $prime[$p]."-".$prime[1]."\n";
            #if remainder 
            if ($prime[1] == $i){
                if($i!=2){
                    #print "$i is prime ".$prime_final[2];
                    #print "\n";
                    $prime_final[$primus_count]=$i;
                    $primus_count++;
                }
            }

        } 

    } 

} #end if number


if(scalar(@prime_final)!=0){
    print  STDOUT join(" ",@prime_final)."\n";
}else{
    print STDOUT "No primus number\n";
}
