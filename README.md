RDBMS timeline
==============

Original author:
* Author: Rafael Martinez Guerrero / PostgreSQL-es
* Email: rafael@postgresql.org.es
* Web: http://www.postgresql.org.es/
* GIT repository: http://www.github.com/rafaelma/rdbms-timeline

Maintainer of this fork:
* Federico Razzoli
* Email: federico_raz@yahoo.it

The intention of the original project is to create a timeline diagram with
information about the main RDBMSs since the 70' up until now.

This fork aims to make the original work a bit more complete, with
particular emphasis on open source RDBMSs.

This is a work in progress. There is still a lot of information
missing. If you have any information which can make this diagram
better, please do not hesitate to contact me or send a patch via
GitHub.


INSTALL
-------

We use Graphviz [1] to generate the SVG and PNG versions og the
diagram.

You need to install Graphviz in your system if you want to use the
RDBMS_timeline.dot file to generate other formats.

With Graphviz installed you can run these commands to generate the
diagram:

* PNG: dot -Tpng -o RDBMS_timeline.png RDBMS_timeline.dot
* SVG: dot -Tsvg -o RDBMS_timeline.svg RDBMS_timeline.dot 

Ref:
[1] http://www.graphviz.org/


TO-DO
-----

* Fix/complete Sybase based on this page: http://www.isug.com/Sybase_FAQ/ASE/
* Draw proper lines between MariaDB and Percona
* Add non-mainstream MySQL forks
* Find a way to graphically differentiate open source RDBMS
* Add missing open source databases


LICENSE
-------

RDBMS-timeline is licensed under a standard 3-clause BSD license.

Copyright (c) 2011-2012, Rafael Martinez Guerrero. All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

 * Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.

 * Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the
   distribution.
    
 * Neither the name of the author nor the names of contributors may be
   used to endorse or promote products derived from this software
   without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

