#!/usr/bin/perl
use strict;
use warnings;
#my @temp = (4,8,3);
if(scalar(@ARGV)<=3 ){
	my @temp = @ARGV;
	if(!$temp[2]){
		$temp[2]=0;
	}
	if(valid_numebers(@temp)){
		my $quadratic = quadratic(@temp);
		print STDOUT $quadratic."\n";
	}else{
		print STDERR "mas be integer [c]\n";
	}
}else{
	print STDERR "use params a b [c]\n";
}
sub quadratic{
	my ($a,$b,$c) = @_;		
	my $fRoot1 = (-$b + sqrt(($b ** 2) - (4 * $a * $c)) ) / (2 * $a);
	my $fRoot2 = (-$b - sqrt(($b ** 2) - (4 * $a * $c)) ) / (2 * $a);	      
    return  $fRoot1." ".$fRoot2;
}

sub valid_numebers{
	my @temp = @_;
	foreach(@temp){
		if (!($_ =~ /^[0-9\-]+$/) ) { 
	  		return 0;
	  	}
  	}
  	return 1;
}