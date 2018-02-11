$dir = $HOME + '\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets'
$desdir = $HOME + '\Desktop\spotlight'
$index = 1

# create direction
mkdir $desdir
# copy
cp ($dir + '\*') $desdir
# change files' name
gci $desdir | % {rni $_.FullName -NewName ('pic_{0:d3}.jpg' -f $index); $index++}
