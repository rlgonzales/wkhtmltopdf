.\" Copyright (C) 1995, 1999, 2000, 2001  Free Software Foundation, Inc.
.\"
.\" This file is part of wkhtmltopdf.
.\"
.\" wkhtmltopdf is free software; you can redistribute it and/or modify
.\" it under the terms of the GNU General Public License as published by
.\" the Free Software Foundation; either version 3, or (at your option)
.\" any later version.
.\"
.\" wkhtmltopdf is distributed in the hope that it will be useful,
.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
.\" GNU General Public License for more details.
.\"
.\" You should have received a copy of the GNU General Public License
.\" along with GNU Emacs; see the file COPYING.  If not, write to the
.\" Free Software Foundation, Inc., 59 Temple Place - Suite 330,
.\" Boston, MA 02111-1307, USA.
.\"
.TH WKHTMLTOPDF 1 "2009 February 23"
.SH NAME

wkhtmltopdf - convert webpages to pdf

.SH SYNOPSIS
wkhtmltopdf [OPTIONS]... <input file> [More inputfiles] <output file>

.SH DESCRIPTION
Converts one or more htmlpage to a pdf document.

.SH OPTIONS
.PD 0
esyscmd(`./wkhtmltopdf --help | sed -ne /Options:/,/Proxy:/p | sed -e /Options:/d -e /Proxy/d | sed -re "s/^[ \t]*//" |  sed -re "s/^((-[a-zA-Z], )?--[a-z-]+)[\t ]*(<[a-z]+>)?[ \t]*/.TP\n\\\fB\1\\\fR \\\fI\3\\\fR\n/" | sed -re "s/''/\\\'/g" | sed -re "s/-/\\\\-/g")
.PD
.SH PROXY
.PD 0
esyscmd(`./wkhtmltopdf --help | sed -ne "/By default proxy/,/<proxy> :=/p" | sed -re "s/^  (.*)/.PP\n\1/" | sed -re "s/-/\\\\-/g"')
.PD
.SH BUGS
Report bugs to <antialize@gmail.com>.
.SH AUTHORS
wkhtmltopdf was written by Jakob Truelsen. 
Patches by esyscmd(`./wkhtmltopdf --version | sed -nre "s/Patches by (.*)/\1/p"')
