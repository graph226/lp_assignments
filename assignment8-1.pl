use utf8;
binmode STDIN, ':utf8';
binmode STDOUT, ':utf8';
open(FIN, "47pref.txt");
binmode FIN, ':utf8';

$count = 0;
@prefs = ();

while($line = <FIN>){
  chomp($line);
  push(@prefs, $line);
  $count++;
}

$prefs_num = @prefs;
print "Number of prefectures is $prefs_num\n";

for($i = 0; $i < 10; $i++){
  print "$prefs[$prefs_num - $i]\n";
}
