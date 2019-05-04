
curl 'https://pubchem.ncbi.nlm.nih.gov/rest/pug/periodictable/XML/?response_type=save&response_basename=PubChemElements_all' > PubChemElements_all

awk -f PubChemElements_all.awk PubChemElements_all > PubChemElements_all.csv

awk -F '|' 'BEGIN{OFS="|"}{if(NR>1){col=strtonum("0X"$5);col1=xor(col,0XFFFFFF);printf "convert -size 360x480 xc:\"#%06X\" -pointsize 72 -fill \"#%06X\"  -gravity center -draw \"text 0,-190 \x27 %s \x27 \" -pointsize 200  -draw \"text 0,-30 \x27 %s \x27 \" -pointsize 54   -draw \"text 0,100 \x27 %s \x27 \" -draw \"text 0,200 \x27 %s \x27\"   %03d.png\n",col,col1, $1,$2,$3,$4,$1}else{print "convert -size 360x480 xc:\"#FFFFFF\"   000.png"}}' PubChemElements_all.csv | bash 

convert 001.png 000.png +append  000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 002.png +append L1.png
convert 003.png 004.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 005.png +append 006.png +append  007.png +append 008.png +append 009.png +append 010.png +append L2.png
convert 011.png 012.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 000.png +append 013.png +append 014.png +append  015.png +append 016.png +append 017.png +append 018.png +append L3.png 
convert 019.png 020.png +append 021.png +append 022.png +append 023.png +append 024.png +append 025.png +append 026.png +append 027.png +append 028.png +append 029.png +append 030.png +append 031.png +append 032.png +append  033.png +append 034.png +append 035.png +append 036.png +append L4.png 
convert 037.png 038.png +append 039.png +append 040.png +append 041.png +append 042.png +append 043.png +append 044.png +append 045.png +append 046.png +append 047.png +append 048.png +append 049.png +append 050.png +append  051.png +append 052.png +append 053.png +append 054.png +append L5.png

convert 055.png 056.png +append 000.png +append 072.png +append 073.png +append 074.png +append 075.png +append 076.png +append 077.png +append 078.png +append 079.png +append 080.png +append 081.png +append 082.png +append  083.png +append 084.png +append 085.png +append 086.png +append L6.png

convert 087.png 088.png +append 000.png +append 104.png +append 105.png +append 106.png +append 107.png +append 108.png +append 109.png +append 110.png +append 111.png +append 112.png +append 113.png +append 114.png +append  115.png +append 116.png +append 117.png +append 118.png +append L7.png


convert 000.png 000.png +append 000.png +append 057.png +append 058.png +append 059.png +append 060.png +append 061.png +append 062.png +append 063.png +append 064.png +append 065.png +append 066.png +append 067.png +append  068.png +append 069.png +append 070.png +append 071.png +append L8.png
convert 000.png 000.png +append 000.png +append 089.png +append 090.png +append 091.png +append 092.png +append 093.png +append 094.png +append 095.png +append 096.png +append 097.png +append 098.png +append 099.png +append  100.png +append 101.png +append 102.png +append 103.png +append L9.png

convert L1.png L2.png -append L3.png -append L4.png -append L5.png -append L6.png -append L7.png -append  L8.png -append L9.png -append LL.png


