use utf8;
binmode STDIN, ':utf8';
binmode STDOUT, ':utf8';
open(FIN, "twcuPR200.txt");
binmode FIN, ':utf8';

$count = 0;
@tweets = ();

while($line = <FIN>){
  chomp($line);
  if ($line !~ /-+/) {
    push(@tweets, $line);
  }
  $count++;
}

foreach $tweet (@tweets) {
  if ($tweet =~ /^【在学生対象】/) {
    print "$tweet\n"
  }
}
