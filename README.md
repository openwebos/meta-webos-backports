# Summary

This repository is collection of recipes and bbclasses we needed to backport
from newer oe-core (dylan) to our build which is using older release (danny).

The aim of this layer is to be able to just remove it from BBLAYERS when we
upgrade oe-core instead of removing individual files from our other layers.


# Copyright and License Information

Unless otherwise specified, all content, including all source code files and
documentation files in this repository is imported from oe-core without any 
modification.

This means all metadata is MIT licensed unless otherwise stated. Source code
included in tree for individual recipes is under the LICENSE stated in the 
.bb file for those software projects unless otherwise stated.

License information for any other files is either explicitly stated
or defaults to GPL version 2.

Modified files are marked with LG Electronics Copyright
