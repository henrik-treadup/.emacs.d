# Dired

## Create directory
To create a directory when you are in a dired buffer just press
the + key. This will prompt you for the name of the directory to
create.

    +

## Create file
The simplest way to create a file is to do C-x C-f which runs
find-file with the directory set to the current directory of the dired
buffer.

## Bookmarks
It is possible to bookmark a dired buffer. The key chord C-x r m will
create a bookmark for a dired buffer.

## Renaming files
With Dired you can rename a collection of files that are matched by a
given regex.

In other words I think that you can rename the files

    f1.txt, ..., fk.txt

to

    b1.txt, ..., bk.txt

## References
https://www.gnu.org/software/emacs/refcards/pdf/dired-ref.pdf
