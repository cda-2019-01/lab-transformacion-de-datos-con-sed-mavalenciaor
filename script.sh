sed 's/\//-/g' data.csv | sed 's/\([0-9]*\)-\([0-9]*\)-\([0-9]*\)/\3-\2-\1/' | sed 's/\([0-9][0-9]\)/20\1/' | sed 's/;;/;\\N;/g' | sed 's/;$/;\\N/g' | sed 's/\([0-9][0-9]*\),\([0-9][0-9]*\)/\1.\2/g' | sed 's/;/,/g' | sed 's/n/\N/g' | sed 's/,N/,\\N/g' | sed 's/,\r/,\\N\r/g' | sed 'y/abc/ABC/' | sed 's/2020/20/g' | sed 's/\([0-9][0-9][0-9][0-9]\)-\([0-9]\)-\([0-9]\)/\1-0\2-0\3/g' | sed '3 s/\./,/' | sed '11 s/2013/2014/' | sed '3 s/\n//' | sed 's/\r//g'