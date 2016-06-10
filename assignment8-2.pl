use utf8;
binmode STDIN, ':utf8';
binmode STDOUT, ':utf8';
open(FIN, "47pref.txt");
binmode FIN, ':utf8';

$count = 0;
@prefs = ();

while($line = <FIN>){
  chomp($line);
  if($line =~ m/県/){
    push(@prefs, $line);
  }
  $count++;
}

$prefs_num = @prefs;

for($i = 0; $i < $prefs_num; $i++){
  print "$prefs[$i]\n";
}
