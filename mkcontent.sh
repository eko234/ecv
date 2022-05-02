#!/usr/bin/bash


SUMFILE="./.SUMFILE"
[ -f "$SUMFILE" ] && rm $SUMFILE
cat db.yml | yq '.summary' | xargs echo >> $SUMFILE

TBLFILE="./.TBLFILE"
[ -f "$TBLFILE" ] && rm $TBLFILE
echo ".TS" >> $TBLFILE
echo "tab(;) nospaces;" >> $TBLFILE
echo "rW15|lx." >> $TBLFILE
cat db.yml | yq '.experience[] | [.dates, .name, .role] | @sh' | xargs echo | xargs printf '\\m[default] %s\\m[linecolor];T{\n.B "%s"\n\\\n.br\n %s\nT}\n' >> $TBLFILE
echo ".TE" >> $TBLFILE

PRJFILE="./.PRJFILE"
[ -f "$PRJFILE" ] && rm $PRJFILE
echo ".QS" >> $PRJFILE
cat db.yml | yq '.projects[] | [.name, .desc] | @sh' | xargs echo | xargs printf ".BL\n.B %s \n\\(en \n%s\n" >> $PRJFILE
echo ".QE" >> $PRJFILE

SKLFILE="./.SKLFILE"
[ -f "$SKLFILE" ] && rm $SKLFILE
echo ".QS" >> $SKLFILE
cat db.yml | yq '.skills[] | [.name, .desc] | @sh' | xargs echo | xargs printf ".BL\n.B %s \n\\(en \n%s\n" >> $SKLFILE
echo ".QE" >> $SKLFILE

