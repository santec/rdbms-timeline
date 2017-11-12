RDBMS timeline
==============

Maintainer of this fork:
* Federico Razzoli
* Email: federico_raz@yahoo.it

Original author:
* Author: Rafael Martinez Guerrero / PostgreSQL-es
* Email: rafael@postgresql.org.es
* Web: http://www.postgresql.org.es/
* GIT repository: http://www.github.com/rafaelma/rdbms-timeline

The intention of the original project is to create a timeline diagram with
information about the main RDBMSs since the 70' up until now.

This fork aims to make the original work a bit more complete, with
particular emphasis on open source RDBMSs.

This is a work in progress. There is still a lot of information
missing. If you have any information which can make this diagram
better, please do not hesitate to contact me or send a patch via
GitHub.


How to include in another project
=================================

Clone the repository, and look at the file RDBMS_timeline.dot. You can easily
modify it for your needs. To find out how data is structured, look for all occurrences
of your favourite database name.

Then, you can regenerate the image you need (PNG or SVG) as explained above.

Now you are free to include the image in any context: a website, slides, a book, etc.
A reference to the repository is appreciated.


Generating the graphs
=====================

We use Graphviz to generate the SVG and PNG versions og the
diagram. You can install it from its website and follow install
instructions. If it is not in your OS repositories, you can install it
from the official website:

```
http://www.graphviz.org/
```

To regenerate graphs, we use a commodity script:

./generate-graphs.sh

The script's behavior can be configured by editing generate-graphs.cnf.
All options are documented in a (hopefully) clear and exhaustive way.
Here you can find a summary of the most relevant.

First, you may want to avoid polluting the project directory with
your new graphs. By editing OUTPUT_PATH, you can decide where
new graphs are generated.

To generate the graphs in different formats, edit FORMAT_LIST.
Note that, by default, some formats are generated that are not
included in the repository.
This can be useful to include the graphs in books, documents, slides,
etc. The list of formats supported by Graphviz is here:
http://www.graphviz.org/doc/info/output.html

If you want to generate different graphs, with different contents,
it is useful to use different filenames. The filename is set by
OUTPUT_FILENAME option.

Last but not least, if what the script does is not what you expect,
you can set VERBOSE=1 to better investigate.
If you are into dot, use VERBOSE=2 to use dot's -v option.


To-Do
=====

* Fix/complete Sybase based on this page: http://www.isug.com/Sybase_FAQ/ASE/
* Draw proper lines between MariaDB and Percona
* Add non-mainstream MySQL forks
* dBase is incomplete
* VoltDB versions
* Find a way to graphically differentiate open source RDBMS
* Add missing open source databases


License
=======

RDBMS-timeline is licensed under a standard 3-clause BSD license.

```
Copyright (c):
2011-2012, Rafael Martinez Guerrero. All rights reserved.
2017, Federico Razzoli
```

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

