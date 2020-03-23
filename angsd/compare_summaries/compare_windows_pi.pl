use strict ; 
use warnings ; 
use Statistics::RankCorrelation ; 
use List::Util qw(sum) ; 

my %map ; 
open IN, "<od2browser.map" ;
while (<IN>) { 
	chomp ; 
	my @split = split ( /\t/, $_ ) ; 
	$map{$split[0]} = $split[1] ; 
}
close IN ; 

my %data ; 
open IN, "$ARGV[1]" ;
while (<IN>) {
	chomp ; 
	my @split = split ( /\t/, $_ ) ;  
	if ( exists ( $map{$split[1]} ) && $split[$#split] > 0 ) {
		$data{$map{$split[1]}}{$split[2]} = $split[4]/$split[$#split] ; 
	}
}
close IN ; 

my $x ; 
my $y ; 

open INN, "<$ARGV[0]" ;
while (<INN>) { 
	chomp ; 
	my @split = split  ( /\t/, $_ ) ; 
	if ( exists( $data{$split[0]} ) ) { 
		my $mid = int ( ( $split[1] + $split[2] ) / 2 ) ;
		if ( exists( $data{$split[0]}{$mid} ) && $split[3] ne "nan" ) { 
#			print $split[0], "\t", $mid, "\t", $data{$split[0]}{$mid}, "\t", $split[3], "\n" ; 
			push @{$x}, $data{$split[0]}{$mid} ;
			push @{$y}, $split[3] ; 
		}
	}
}
close INN ; 

my $c = Statistics::RankCorrelation->new( $x, $y, sorted => 1 );

print "mean of angsd:\t", sum(@{$x})/@{$x}, "\n" ;
print "mean of vcftools:\t", sum(@{$y})/@{$y}, "\n" ;
print "spearman's rho:\t", $c->spearman, "\n" ;
