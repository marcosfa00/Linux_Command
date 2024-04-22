# File Viewing and Counting Commands

Welcome to the guide on file viewing and counting commands in Linux. In this document, you will find a summary of useful commands for viewing file contents and determining line, word, and character counts.

## Cat Command

The `cat` command is used to print the entire contents of a file to standard output.

```bash
cat <filename>
```

Example:
```bash
cat numbers.txt
```

## More Command

The `more` command allows you to view a file's content in a page-by-page format.

```bash
more <filename>
```

Example:
```bash
more numbers.txt
```

- Press the space bar to view the next page.
- Press `q` to quit the `more` program.

## Head Command

The `head` command prints the first N lines of a file.

```bash
head [-n N] <filename>
```

Example:
```bash
head -n 3 numbers.txt
```

## Tail Command

The `tail` command prints the last N lines of a file.

```bash
tail [-n N] <filename>
```

Example:
```bash
tail -n 3 numbers.txt
```

## WC Command

The `wc` command is used to count the number of lines, words, and characters in a file.

```bash
wc [-l] [-w] [-c] <filename>
```

- `-l`: Count lines.
- `-w`: Count words.
- `-c`: Count characters.

Example:
```bash
wc -l -w -c pets.txt
```

This command will return the number of lines, words, and characters in the file `pets.txt`.


# Continued: Shell Commands

In this continuation, we'll cover additional shell commands mentioned in the video, focusing on those related to working with files, directories, printing file contents, and networking applications.

## Shell Commands for Working with Files and Directories

### cp
- `cp`: Copy files or directories.
```bash
cp <source> <destination>
```
Example:
```bash
cp file1.txt /path/to/destination/
```

### mv
- `mv`: Move or rename files or directories.
```bash
mv <source> <destination>
```
Example:
```bash
mv file1.txt newname.txt
```

### rm
- `rm`: Remove files or directories.
```bash
rm <filename>
```
Example:
```bash
rm file1.txt
```

### touch
- `touch`: Create an empty file or update file timestamp.
```bash
touch <filename>
```
Example:
```bash
touch newfile.txt
```

### chmod
- `chmod`: Change or modify file permissions.
```bash
chmod <permissions> <filename>
```
Example:
```bash
chmod 755 script.sh
```

### grep
- `grep`: Return lines in a file matching a pattern.
```bash
grep <pattern> <filename>
```
Example:
```bash
grep "keyword" file.txt
```

## Shell Commands for Printing File Contents

### echo
- `echo`: Print string or variable values.
```bash
echo <string or variable>
```
Example:
```bash
echo "Hello, World!"
```

## Networking Applications

### curl
- `curl`: Display contents of a file located at a URL.
```bash
curl <URL>
```
Example:
```bash
curl https://example.com/file.txt
```

### wget
- `wget`: Download a file from a URL.
```bash
wget <URL>
```
Example:
```bash
wget https://example.com/file.txt
```
# Continued: Informational Commands

In this continuation, we'll explore additional informational commands mentioned in the video, focusing on those related to getting user and operating system information, monitoring running processes and their resource usage, printing strings and variables, displaying dates, and accessing command manuals.

## User and Operating System Information

### uname
- `uname`: Returns operating system information.
```bash
uname [-s] [-r] [-v]
```
Example:
```bash
uname -s -r
```

## System Disk Usage

### df
- `df`: Displays system disk usage.
```bash
df [-h] [directory]
```
Example:
```bash
df -h ~
```

## Monitoring Processes and Resource Usage

### ps
- `ps`: Displays currently running processes.
```bash
ps [-e]
```
Example:
```bash
ps -e
```

### top
- `top`: Shows a table of running processes and their resource usage.
```bash
top [-n <number>]
```
Example:
```bash
top -n 3
```

## Printing Strings and Variables

### echo
- `echo`: Prints text or variables.
```bash
echo <string> or $<variable>
```
Example:
```bash
echo "Hello, World!"
echo $PATH
```

## Displaying Dates

### date
- `date`: Displays the current system date and time.
```bash
date [+format]
```
Example:
```bash
date "+%A, %B %d, %Y"
```

## Accessing Command Manuals

### man
- `man`: Displays the manual for a command.
```bash
man <command>
```
Example:
```bash
man df
```

# Continued: File and Directory Navigation Commands

In this continuation, we'll further explore commands for file and directory navigation, including the `ls` command for listing directory contents, the `pwd` command for printing the current working directory, the `cd` command for changing directories, and the `find` command for locating files.

## Printing the Current Working Directory

### pwd
- `pwd`: Prints the current working directory.
```bash
pwd
```
Example:
```bash
pwd
```

## Changing Directories

### cd
- `cd`: Changes the current working directory.
```bash
cd <directory>
```
Example:
```bash
cd Documents
```

## Relative and Absolute Paths

Relative paths are relative to your current working directory, while absolute paths stand independently.

- Relative Path: To navigate to the parent directory, use `cd ..`.
```bash
cd ..
```
- Absolute Path: Use the tilde symbol (`~`) to represent the absolute path to the home folder.
```bash
cd ~
```
- Full Path: Provide the full path to a directory to navigate directly.
```bash
cd /path/to/directory
```

## Finding Files

### find
- `find`: Searches for files in directories.
```bash
find <directory> -name '<filename>'
```
Example:
```bash
find . -name 'a.txt'
```

- Case-insensitive search with `-iname` option.
```bash
find . -iname 'a.txt'
```

# Continued: File and Directory Management Commands

In this continuation, we'll further explore commands for file and directory management, including creating and deleting files and directories, copying and moving files and directories, and managing file permissions.

## Creating and Deleting Files and Directories

### mkdir
- `mkdir`: Creates directories.
```bash
mkdir <directory>
```
Example:
```bash
mkdir test
```

### rm
- `rm`: Removes files or directories.
```bash
rm <file or directory>
```
Example:
```bash
rm file1
```
- To remove directories recursively:
```bash
rm -r <directory>
```
Example:
```bash
rm -r folder1
```

### rmdir
- `rmdir`: Removes empty directories.
```bash
rmdir <directory>
```
Example:
```bash
rmdir empty_directory
```

### touch
- `touch`: Creates empty files or updates the last-modified date of an existing file.
```bash
touch <filename>
```
Example:
```bash
touch a.txt b.txt c.txt d.txt
```

## Copying and Moving Files and Directories

### cp
- `cp`: Copies files or directories.
```bash
cp <source> <destination>
```
Example:
```bash
cp notes.txt Documents/
```
- To copy directories recursively, use the `-r` option.
```bash
cp -r <source> <destination>
```
Example:
```bash
cp -r Documents Docs_copy
```

### mv
- `mv`: Moves or renames files or directories.
```bash
mv <source> <destination>
```
Example:
```bash
mv my_script.sh Scripts/
```

## Managing File Permissions

### chmod
- `chmod`: Changes read, write, and execute permissions on files.
```bash
chmod <permissions> <filename>
```
Example:
```bash
chmod +x my_script.sh
```

# Continued: Useful Commands for Wrangling Text Files

In this continuation, we'll further explore commands for manipulating text files, including sorting lines, removing duplicates, searching for patterns, extracting slices and fields, and merging lines from multiple files.

## Sorting Lines

### sort
- `sort`: Sorts the lines of a file alpha-numerically.
```bash
sort <filename>
```
Example:
```bash
sort pets.txt
```
- To sort in reverse order:
```bash
sort -r <filename>
```
Example:
```bash
sort -r pets.txt
```

## Removing Repeated Lines

### uniq
- `uniq`: Filters out repeated lines from a sorted file.
```bash
uniq <filename>
```
Example:
```bash
uniq pets.txt
```

## Searching for Patterns

### grep
- `grep`: Searches for lines matching a specified pattern.
```bash
grep <pattern> <filename>
```
Example:
```bash
grep "c h" people.txt
```
- To perform a case-insensitive search:
```bash
grep -i <pattern> <filename>
```
Example:
```bash
grep -i "c h" people.txt
```

## Extracting Slices and Fields

### cut
- `cut`: Extracts specific sections from each line.
```bash
cut -c <start>-<end> <filename>
```
Example:
```bash
cut -c 2-9 people.txt
```
- To specify a custom field delimiter:
```bash
cut -d "<delimiter>" -f <field> <filename>
```
Example:
```bash
cut -d " " -f 2 people.txt
```

## Merging Lines from Multiple Files

### paste
- `paste`: Merges lines from multiple files.
```bash
paste <file1> <file2> ... <fileN>
```
Example:
```bash
paste first.txt last.txt yob.txt
```
- To specify a custom delimiter:
```bash
paste -d "<delimiter>" <file1> <file2> ... <fileN>
```
Example:
```bash
paste -d "," first.txt last.txt yob.txt
```

# Continued: Networking Commands

In this continuation, we'll further explore networking commands to examine network configuration, evaluate URL connections, and retrieve data from URLs.

## Examining Network Configuration

### hostname
- `hostname`: Gets or sets the hostname and other identifying information of your computer.
```bash
hostname
```
Example:
```bash
hostname
```
- To get the IP address of the hostname:
```bash
hostname -i
```
Example:
```bash
hostname -i
```

### ifconfig
- `ifconfig`: Displays information regarding all communication devices.
```bash
ifconfig
```
Example:
```bash
ifconfig
```
- To inspect a specific device:
```bash
ifconfig <device>
```
Example:
```bash
ifconfig eth0
```

## Testing Connectivity

### ping
- `ping`: Tests connectivity to a host or IP address.
```bash
ping <hostname/IP>
```
Example:
```bash
ping google.com
```
- To specify the number of ping results:
```bash
ping -c <count> <hostname/IP>
```
Example:
```bash
ping -c 5 google.com
```

## Retrieving Data from URLs

### curl
- `curl`: Transfers data to and from URLs, supporting various protocols.
```bash
curl <URL>
```
Example:
```bash
curl www.google.com
```
- To save the contents to a local file:
```bash
curl -o <filename> <URL>
```
Example:
```bash
curl -o google.txt www.google.com
```

### wget
- `wget`: Retrieves files located at a URL, with recursive downloading capabilities.
```bash
wget <URL>
```
Example:
```bash
wget http://www.example.com/file.txt
```

# Continued: File Archiving and Compression Commands

In this continuation, we'll delve deeper into file archiving and compression commands, distinguishing between archiving and compression, creating archived files, and applying commands to compress, decompress, and extract files from archives.

## Creating Archived Files

### tar
- `tar`: Archives and de-archives files and directories.
```bash
tar -cf <archive_name> <file/directory>
```
Example:
```bash
tar -cf notes.tar notes/
```
- To compress the archive:
```bash
tar -czf <archive_name.tar.gz> <file/directory>
```
Example:
```bash
tar -czf notes.tar.gz notes/
```

### zip
- `zip`: Compresses files and directories into a single archive.
```bash
zip <archive_name.zip> <file/directory>
```
Example:
```bash
zip notes.zip notes/
```

## Extracting and Decompressing

### tar
- To extract an archive:
```bash
tar -xf <archive_name>
```
Example:
```bash
tar -xf notes.tar
```
- To decompress and extract a compressed archive:
```bash
tar -xzf <compressed_archive_name.tar.gz>
```
Example:
```bash
tar -xzf notes.tar.gz
```

### unzip
- `unzip`: Extracts compressed files from a zip archive and decompresses them.
```bash
unzip <archive_name.zip>
```
Example:
```bash
unzip notes.zip
```

