#!/bin/bash
 
cat vs_code_extensions_list.txt | xargs -n 1 code --install-extension
#code --list-extensions | xargs -n 1 code --uninstall-extension

