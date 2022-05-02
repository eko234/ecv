.so macros.ms
.fam T
.nr PS 10p
.nr VS 14p
.ds CH
.
.
.defcolor linecolor rgb 0.6f 0.6f 0.6f
.defcolor headingcolor rgb 0.5f 0.5f 0.5f
.
.
.de heading
.   nf
.   ps 14
.   B "\\$1"
\h'0n'\v'-1.2n'\
\m[headingcolor]\
\l'\\n(.lu\(ul'\
\m[default]
.   ps 10
.   sp -.2
.   fi
..

.de BL
.IP \(bu 2
..

.ce 2
.ps 18
.B "Your name"
.ps 10
Software Engineer
.TS
tab(;) nospaces;
l rx.
.I "Your mail"
.I "Your github profile, maybe"
.I "Your phone"

.TE

.heading "Summary"
.so ./.SUMFILE

.heading "Experience"
.so ./.TBLFILE
\m[default]
.heading "Skills"
.so ./.SKLFILE


.heading "Projects"
.so ./.PRJFILE
