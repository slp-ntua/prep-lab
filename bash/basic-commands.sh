# Print to stdout
echo "Hello World"

# Show the contents of environment variables
echo $MYENVVAR

# Set an environment variable
export MYENVVAR="HEl10 W0r1d"

# Some useful environment variables
echo $PATH
echo $USER
echo $SHELL
echo $PWD
echo $CUDA_VISIBLE_DEVICES
echo $CFLAGS
echo $EDITOR

# Show all the env variables
env

# Print user name
whoami

# Print path to command
which whoami

# Get one line information about a command
whatis whoami
whatis echo

# Get the full man page of a command
man whoami
man echo

# Print current working directory
pwd

# Change directory
cd /home/geopar/tmp/other-directory
cd ..
cd ../../../
cd ~
cd -

# Create a directory
mkdir newdir
mkdir -p this/is/a/nested/dir
mkdir -p newdir

# Show the contents of a directory
ls
ls newdir
ls this
ls -lah

# Copy files
cp auto.csv newdir
cp -r newdir newdir.backup

# Move / rename files
mv newdir.backup newdir.bkp
mv newdir.bkp this/is/a/nested/dir

# remove directories and files
rm this/is/a/nested/dir/newdir.bkp/auto.csv
rm -r newdir.bkp
rm -i newdir/auto.csv

# Show contents of file
cat auto.csv
less auto.csv
head -12 auto.csv
tail +9 auto.csv
tail -9 auto.csv
tail -f auto.csv

# Output / Input Redirection
head auto.csv > first-ten-lines.csv
tail auto.csv > last-ten-lines.csv
cat first-ten-lines.csv last-ten-lines.csv > first-and-last-ten-lines.csv
rm first-and-last-ten-lines.csv
cp first-ten-lines.csv first-and-last-ten-lines.csv
cat last-ten-lines.csv >> first-and-last-ten-lines.csv
cat < auto.csv

# Piping
ls -l / | tail -2

# Download files
curl https://raw.githubusercontent.com/georgepar/slp/master/tools/embedding_utils.bash
curl https://raw.githubusercontent.com/georgepar/slp/master/tools/embedding_utils.bash > embeddings_utils.bash
curl https://raw.githubusercontent.com/georgepar/slp/master/tools/embedding_utils.bash | less
wget https://raw.githubusercontent.com/georgepar/slp/master/tools/embedding_utils.bash

# Count elements in file
wc -c auto.csv  # characters
wc -w auto.csv  # words
wc -l auto.csv  # lines

# Find files
find . -name "*.csv"
