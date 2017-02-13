# allzip-extract-exe
Bash script to extract under Linux self-extracting Win32 exe file created by AllZIP software.  

This tool tries to locate egg https://en.wikipedia.org/wiki/EGG_(file_format)file in exe,
extracts egg file and decompress it.  

1. Download UnEGG http://sdn.altools.co.kr/etc/unegg.tar.bz and extract it somewhere.
2. According to your Linux system arch (32 or 64 bit), grab proper unegg file form release-x64 or
release-x32 directory  
3. Put allzipex.sh, unegg and to be unpcked .exe file into same directory
4. Run allzipex.sh with .exe file name as parameter

  