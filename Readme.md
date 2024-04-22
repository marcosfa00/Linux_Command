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


